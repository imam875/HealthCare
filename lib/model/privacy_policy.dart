
import 'package:flutter/material.dart';
import 'package:healthpro/model/terms&conditions.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text("Privacy Policy",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              elevation: 10,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text("Dotcom System ltd. built the স্বাস্থ্য সেবা app as a Free app. This SERVICE is provided by Dotcom System ltd. at no cost and is intended for use as is.", style: TextStyle(fontSize: 18,), ),
                    Text("This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.", style: TextStyle(fontSize: 18,),),
                    Text("If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.", style: TextStyle(fontSize: 18,),),
                    Text("The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at স্বাস্থ্য সেবা unless otherwise defined in this Privacy Policy.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Information Collection and Use", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Training for Mobile Application/Game Development (Cross Platform). The information that we request will be retained by us and used as described in this privacy policy.", style: TextStyle(fontSize: 18,),),
                    Text("The app does use third-party services that may collect information used to identify you.", style: TextStyle(fontSize: 18,),),
                    Text("Link to the privacy policy of third-party service providers used by the app", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Facebook", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Log Data", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cookies", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.", style: TextStyle(fontSize: 18,),),
                    Text("This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Service Providers", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("We may employ third-party companies and individuals due to the following reasons:", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("To facilitate our Service;" , style: TextStyle(fontSize: 18,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("To provide the Service on our behalf;", style: TextStyle(fontSize: 18,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("To perform Service-related services; or", style: TextStyle(fontSize: 18,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("To assist us in analyzing how our Service is used.", style: TextStyle(fontSize: 18,),),
                    ),
                    Text("We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Security", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Links to Other Sites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Children’s Privacy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Changes to This Privacy Policy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.", style: TextStyle(fontSize: 18,),),
                    Text("This policy is effective as of 2022-02-01", style: TextStyle(fontSize: 18,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Contact Us", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    ),
                    Text("If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at imamhossen983@gmail.com.", style: TextStyle(fontSize: 18,),),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsConditions()));
          },
            child: Text("Terms & Conditions",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
