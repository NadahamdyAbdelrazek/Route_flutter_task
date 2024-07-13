import 'package:flutter/widgets.dart';
import 'package:loader_overlay/loader_overlay.dart';


 setLoading(BuildContext context,bool show){
  if(show){
    context.loaderOverlay.show();
  }else{
    context.loaderOverlay.hide();
  }

}