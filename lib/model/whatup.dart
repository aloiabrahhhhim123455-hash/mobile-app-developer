import 'package:url_launcher/url_launcher.dart';

class Whatup {

Uri url= Uri.parse("https://wa.me/770425652");

  Future<dynamic> open() async{

    if(await launchUrl(url,mode: LaunchMode.externalApplication))
    {
       
    }
    else{
      throw Exception("Could not launch $url");
    }
 
  }
}