import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "TERMS AND CONDITIONS"
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
                children: const [
                  Text(
                    "1.AGREEMENT TO TERMS",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "These Terms and Conditions constitute a legally binding agreement made between you, whether personally or on behalf of an entity (“you”) and jobit Company, concerning your access to and use of the Jobit App Mobile as well as any other media form, media channel, mobile website or mobile application related, linked, or otherwise connected thereto (collectively, the “Site”). We are registered in Peru and have our registered office at lima peru, Lima Metropolitana, Lima. You agree that by accessing the Site, you have read, understood, and agree to be bound by all of these Terms and Conditions. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS AND CONDITIONS, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SITE AND YOU MUST DISCONTINUE USE IMMEDIATELY. Supplemental terms and conditions or documents that may be posted on the Site from time to time are hereby expressly incorporated herein by reference. We reserve the right, in our sole discretion, to make changes or modifications to these Terms and Conditions at any time and for any reason. We will alert you about any changes by updating the “Last updated” date of these Terms and Conditions, and you waive any right to receive specific notice of each such change. Please ensure that you check the applicable Terms every time you use our Site so that you understand which Terms apply. You will be subject to, and will be deemed to have been made aware of and to have accepted, the changes in any revised Terms and Conditions by your continued use of the Site after the date such revised Terms and Conditions are posted.The information provided on the Site is not intended for distribution to or use by any person or entity in any jurisdiction or country where such distribution or use would be contrary to law or regulation or which would subject us to any registration requirement within such jurisdiction or country. Accordingly, those persons who choose to access the Site from other locations do so on their own initiative and are solely responsible for compliance with local laws, if and to the extent local laws are applicable.The Site is intended for users who are at least 18 years old. Persons under the age of 18 are not permitted to use or register for the Site.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "2.INTELLECTUAL PROPERTY RIGHTS",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Unless otherwise indicated, the Site is our proprietary property and all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics on the Site (collectively, the “Content”) and the trademarks, service marks, and logos contained therein (the “Marks”) are owned or controlled by us or licensed to us, and are protected by copyright and trademark laws and various other intellectual property rights and unfair competition laws of the United States, international copyright laws, and international conventions. The Content and the Marks are provided on the Site “AS IS” for your information and personal use only. Except as expressly provided in these Terms and Conditions, no part of the Site and no Content or Marks may be copied, reproduced, aggregated, republished, uploaded, posted, publicly displayed, encoded, translated, transmitted, distributed, sold, licensed, or otherwise exploited for any commercial purpose whatsoever, without our express prior written permission.Provided that you are eligible to use the Site, you are granted a limited license to access and use the Site and to download or print a copy of any portion of the Content to which you have properly gained access solely for your personal, non-commercial use. We reserve all rights not expressly granted to you in and to the Site, the Content and the Marks.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "3.USER REPRESENTATIONS",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "By using the Site, you represent and warrant that: (1) you have the legal capacity and you agree to comply with these Terms and Conditions; (2) you are not a minor in the jurisdiction in which you reside; (3) you will not access the Site through automated or non-human means, whether through a bot, script or otherwise; (4) you will not use the Site for any illegal or unauthorized purpose; and (5) your use of the Site will not violate any applicable law or regulation.If you provide any information that is untrue, inaccurate, not current, or incomplete, we have the right to suspend or terminate your account and refuse any and all current or future use of the Site (or any portion thereof)",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "4.FEES AND PAYMENT",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We accept the following forms of payment: -Visa. You may be required to purchase or pay a fee to access some of our services. You agree to provide current, complete, and accurate purchase and account information for all purchases made via the Site. You further agree to promptly update account and payment information, including email address, payment method, and payment card expiration date, so that we can complete your transactions and contact you as needed. We bill you through an online billing account for purchases made via the Site. Sales tax will be added to the price of purchases as deemed required by us. We may change prices at any time. All payments shall be in soles.You agree to pay all charges or fees at the prices then in effect for your purchases, and you authorize us to charge your chosen payment provider for any such amounts upon making your purchase.We reserve the right to correct any errors or mistakes in pricing, even if we have already requested or received payment. We also reserve the right to refuse any order placed through the Site.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "5.CANCELLATION",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "All purchases are non-refundable. You can cancel your subscription at any time by logging into your account or contacting us using the contact information provided below. Your cancellation will take effect at the end of the current paid term.If you are unsatisfied with our services, please email us at example@upc.edu.pe or call us at (+51) 999999999.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "6.SOFTWARE",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We may include software for use in connection with our services. If such software is accompanied by an end user license agreement (“EULA”), the terms of the EULA will govern your use of the software. If such software is not accompanied by a EULA, then we grant to you a non-exclusive, revocable, personal, and non-transferable license to use such software solely in connection with our services and in accordance with these Terms and Conditions. Any Software and any related documentation is provided “as is” without warranty of any kind, either express or implied, including, without limitation, the implied warranties of merchantability, fitness for a particular purpose, or non-infringement. You accept any and all risk arising out of use or performance of any Software. You may not reproduce or redistribute any software except in accordance with the EULA or these Terms and Conditions.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "7.PROHIBITED ACTIVITIES",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You may not access or use the Site for any purpose other than that for which we make the Site available. The Site may not be used in connection with any commercial endeavors except those that are specifically endorsed or approved by us.As a user of the Site, you agree not to:Systematically retrieve data or other content from the Site to create or compile, directly or indirectly, a collection, compilation, database, or directory without written permission from us.Trick, defraud, or mislead us and other users, especially in any attempt to learn sensitive account information such as user passwords.Circumvent, disable, or otherwise interfere with security-related features of the Site, including features that prevent or restrict the use or copying of any Content or enforce limitations on the use of the Site and/or the Content contained therein.Disparage, tarnish, or otherwise harm, in our opinion, us and/or the Site.Use any information obtained from the Site in order to harass, abuse, or harm another person.Make improper use of our support services or submit false reports of abuse or misconduct.Use the Site in a manner inconsistent with any applicable laws or regulations.Engage in unauthorized framing of or linking to the Site.Upload or transmit (or attempt to upload or to transmit) viruses, Trojan horses, or other material, including excessive use of capital letters and spamming (continuous posting of repetitive text), that interferes with any party’s uninterrupted use and enjoyment of the Site or modifies, impairs, disrupts, alters, or interferes with the use, features, functions, operation, or maintenance of the Site.Engage in any automated use of the system, such as using scripts to send comments or messages, or using any data mining, robots, or similar data gathering and extraction tools.Delete the copyright or other proprietary rights notice from any Content.Attempt to impersonate another user or person or use the username of another user.Upload or transmit (or attempt to upload or to transmit) any material that acts as a passive or active information collection or transmission mechanism, including without limitation, clear graphics interchange formats (“gifs”), 1×1 pixels, web bugs, cookies, or other similar devices (sometimes referred to as “spyware” or “passive collection mechanisms” or “pcms”).Interfere with, disrupt, or create an undue burden on the Site or the networks or services connected to the Site.Harass, annoy, intimidate, or threaten any of our employees or agents engaged in providing any portion of the Site to you.Attempt to bypass any measures of the Site designed to prevent or restrict access to the Site, or any portion of the Site.Copy or adapt the Site’s software, including but not limited to Flash, PHP, HTML, JavaScript, or other code.Except as permitted by applicable law, decipher, decompile, disassemble, or reverse engineer any of the software comprising or in any way making up a part of the Site.Except as may be the result of standard search engine or Internet browser usage, use, launch, develop, or distribute any automated system, including without limitation, any spider, robot, cheat utility, scraper, or offline reader that accesses the Site, or using or launching any unauthorized script or other software.Use a buying agent or purchasing agent to make purchases on the Site.Make any unauthorized use of the Site, including collecting usernames and/or email addresses of users by electronic or other means for the purpose of sending unsolicited email, or creating user accounts by automated means or under false pretenses.Use the Site as part of any effort to compete with us or otherwise use the Site and/or the Content for any revenue-generating endeavor or commercial enterprise.Sell or otherwise transfer your profile.Use the Site to advertise or offer to sell goods and services.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "8.MISCELLANEOUS",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "These Terms and Conditions and any policies or operating rules posted by us on the Site or in respect to the Site constitute the entire agreement and understanding between you and us. Our failure to exercise or enforce any right or provision of these Terms and Conditions shall not operate as a waiver of such right or provision. These Terms and Conditions operate to the fullest extent permissible by law. We may assign any or all of our rights and obligations to others at any time. We shall not be responsible or liable for any loss, damage, delay, or failure to act caused by any cause beyond our reasonable control. If any provision or part of a provision of these Terms and Conditions is determined to be unlawful, void, or unenforceable, that provision or part of the provision is deemed severable from these Terms and Conditions and does not affect the validity and enforceability of any remaining provisions. There is no joint venture, partnership, employment or agency relationship created between you and us as a result of these Terms and Conditions or use of the Site. You agree that these Terms and Conditions will not be construed against us by virtue of having drafted them. You hereby waive any and all defenses you may have based on the electronic form of these Terms and Conditions and the lack of signing by the parties hereto to execute these Terms and Conditions.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "9.USER DATA",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We will maintain certain data that you transmit to the Site for the purpose of managing the performance of the Site, as well as data relating to your use of the Site. Although we perform regular routine backups of data, you are solely responsible for all data that you transmit or that relates to any activity you have undertaken using the Site. You agree that we shall have no liability to you for any loss or corruption of any such data, and you hereby waive any right of action against us arising from any such loss or corruption of such data.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "10.CONTACT US",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "In order to resolve a complaint regarding the Site or to receive further information regarding use of the Site, please contact us at: jobit lima peru Lima Metropolitana, Lima Peru Phone: (+51)999999999 example@upc.edu.pe",
                    textAlign: TextAlign.justify,
                  ),
                ]
            ),
          ),
        ),
      );
  }
}
