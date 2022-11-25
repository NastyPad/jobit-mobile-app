using AutoMapper;
using Jobit.API.Jobit.Domain.Models;
using Jobit.API.Jobit.Domain.Repositories;
using Jobit.API.Security.Domain.Models;
using Jobit.API.Security.Domain.Repositories;
using Jobit.API.Security.Domain.Services;
using Jobit.API.Security.Domain.Services.Communication;
using Jobit.API.Security.Resources;
using Jobit.API.Shared.Domain.Repositories;

namespace Jobit.API.Security.Services;

public class UserService : IUserService
{
    private readonly IApplicantProfileRepository _applicantProfileRepository;
    private readonly IUserRepository _userRepository;
    private readonly IUnitOfWork _unitOfWork;
    private readonly IMapper _mapper;

    public UserService(IApplicantProfileRepository applicantProfileRepository, IUserRepository userRepository, IUnitOfWork unitOfWork, IMapper mapper)
    {
        _applicantProfileRepository = applicantProfileRepository;
        _userRepository = userRepository;
        _unitOfWork = unitOfWork;
        _mapper = mapper;
    }

    public async Task<IEnumerable<User>> ListUsersAsync()
    {
        return await _userRepository.ListAllUsersAsync();
    }

    public async Task<User> GetByUserIdAsync(long userId)
    {
        var user = await _userRepository.FindUserByUserIdAsync(userId);
        if (user == null) 
            throw new KeyNotFoundException("User not found");
        return user;
    }

    public async Task RegisterUserAsync(RegisterUserRequest registeredUserRequest)
    {
        var user = _mapper.Map<User>(registeredUserRequest);

        try
        {
            await _userRepository.RegisterUserAsync(user); // Id will be autogenerated on add (Review db context)
            await _unitOfWork.CompleteAsync();
            //Generate user profile
            await GenerateUserProfileAsync(user.UserId);
            await _unitOfWork.CompleteAsync();
        }
        catch (Exception exception)
        {
            throw new ApplicationException($"An error has occurred { exception.Message }");
        }
    }
    
    public async Task<Object> GetUserPublicNames(long userId)
    {
        var user = await _userRepository.FindUserByUserIdAsync(userId);
        return new { firstname = user.Firstname, lastname = user.Lastname, username = user.Username};
    }
    
    public async Task GenerateUserProfileAsync(long userId)
    {
        //Creating new Profile for user
        try
        {
            
            var userPublicNames = await GetUserPublicNames(userId);
            var username = userPublicNames.GetType().GetProperty("username")!.GetValue(userPublicNames, null)!.ToString();
            var firstname = userPublicNames.GetType().GetProperty("firstname")!.GetValue(userPublicNames, null)!.ToString();
            var lastname = userPublicNames.GetType().GetProperty("lastname")!.GetValue(userPublicNames, null)!.ToString();
            //Console.WriteLine(username!, firstname, lastname);
            
            ApplicantProfile starterApplicantProfile = new ApplicantProfile(userId, username!, firstname, lastname);
            //await _applicantProfileRepository.AddApplicantProfileAsync(starterApplicantProfile);
        }
        catch (Exception exception)
        {
            throw new ApplicationException($"An error has occurred creating user profile: { exception.Message }");
        }
    }
}