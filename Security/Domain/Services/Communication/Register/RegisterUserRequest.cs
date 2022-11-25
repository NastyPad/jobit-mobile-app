using System.ComponentModel.DataAnnotations;

namespace Jobit.API.Security.Domain.Services.Communication;


public class RegisterUserRequest
{
    [Required] public string Username { get; set; }
    [Required] public string Firstname { get; set; }
    [Required] public string Lastname { get; set; }
    [Required] public string Email { get; set; }
    [Required] public string Password { get; set; }
}