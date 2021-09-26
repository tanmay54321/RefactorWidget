import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class DefaultMaterialButton extends StatelessWidget {
  String text;
  double fontsize;
  FontWeight fontweight;
  Color splashcolor;
  Color textcolor;
  Color focuscolor;
  Color hovercolor;
  Color background_color;
  double width;
  double height;
  Function function;
  DefaultMaterialButton({required Key key,required this.text,required this.textcolor,required this.fontsize,required this.fontweight,required this.background_color,required this.hovercolor,required this.focuscolor,required this.splashcolor,required this.width,required this.height,required this.function});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        minWidth: width,
        height: height,
        onPressed: () {
          function;
        },
        child: Text(text,style: TextStyle(color:textcolor,fontSize: fontsize,fontWeight: fontweight),),
        visualDensity: VisualDensity.comfortable,
        splashColor: Colors.yellow,
        focusColor: Colors.green,
        hoverColor: Colors.red,
        color: Colors.purpleAccent,

//      hoverColor: Colors.red,
      ),
    );
  }
}


// This text is clikebal Text

class DefaultInkwellText extends StatelessWidget {
  String text;
  Color textcolor;
  double fontsize;
  FontWeight fontweight;
  Color hovercolor;
  Color splashcolor;
  Function function;

  DefaultInkwellText({required this.text,required this.textcolor,required this.fontsize,required this.fontweight,required this.hovercolor,required this.splashcolor,required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        hoverColor: hovercolor,
        splashColor: splashcolor,
        onTap: (){
          function;
        },
        child: Text(text,style: TextStyle(color: textcolor,fontSize: fontsize,fontWeight: fontweight),),
      ),
    );
  }
}


//This is normal text button
class DefaultNormalText extends StatelessWidget {
  String text;
  FontWeight fontweight;
  Color textcolor;
  double fontsize;
  DefaultNormalText({required this.text,required this.textcolor,required this.fontsize,required this.fontweight});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,style: TextStyle(
        color: textcolor,fontWeight: fontweight,fontSize: fontsize
      ),),
    );
  }
}



//This is default clickeble text button
class DefaultselectableText extends StatelessWidget {
  String text;
  Color textcolor;
  double fontsize;
  FontWeight fontweight;
  DefaultselectableText({required this.text,required this.textcolor,required this.fontsize,required this.fontweight});
  @override
  Widget build(BuildContext context) {
    return SelectableText(text,style: TextStyle(color: textcolor,fontSize: fontsize,fontWeight: fontweight),);
  }
}

// Selected and clickebal text
class DefaultSelectebleClickebleText extends StatelessWidget {
  String text;
  Color textcolor;
  double fontsize;
  FontWeight fontweight;
  Function function;
  DefaultSelectebleClickebleText({required this.text,required this.textcolor,required this.fontsize,required this.fontweight,required this.function});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      child:  Text(text,style: TextStyle(
          color: textcolor,fontWeight: fontweight,fontSize: fontsize
      ),),
      onTap: (){
        function();
      },
    );
  }
}




//This is  default container with Linear gradient
class DefaultContainerWithColor extends StatelessWidget {
  Function DefaultContainerFunction;
  BorderRadius borderRadius;
  double width;
  double height;
  DefaultContainerWithColor({required this.DefaultContainerFunction,required this.borderRadius,required this.width,required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(7, 22, 36, 1.0),
              Color.fromRGBO(29, 94, 157, 1.0)
            ],
          ),),
      child: DefaultContainerFunction(context),
    );
  }
}



class DefaultAssetImage extends StatelessWidget {
  double width;
  double height;
  BoxShape image_shape;
  String image;
  DefaultAssetImage({required this.image,required this.width,required this.height,required this.image_shape}); // image_shape = BoxShape.rectangle/circle(Referance for future)
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              image),
          fit: BoxFit.fill,
        ),
        shape: image_shape,
      ),
    );
  }
}

class DefaultNetworkImage extends StatelessWidget {
  double width;
  double height;
  BoxShape image_shape;
  String image;
  DefaultNetworkImage({required this.image,required this.width,required this.height,required this.image_shape}); // image_shape = BoxShape.rectangle/circle(Referance for future)
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              image),
          fit: BoxFit.fill,
        ),
        shape: image_shape,
      ),
    );
  }
}

class DefaultAssetCircularAvatar extends StatelessWidget {
  String image;
  double circle_radius;
  DefaultAssetCircularAvatar({required this.image,required this.circle_radius});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: circle_radius,

    );
  }
}



class DefaultNetworkCircularAvatar extends StatelessWidget {
  String image;
  double circle_radius;
  DefaultNetworkCircularAvatar({required this.image,required this.circle_radius});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(image),
      radius: circle_radius,

    );
  }
}


class DefaultLoadingSpin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.red : Colors.green,
          ),
        );
      },
    );
  }
}

class DefaultDropDownButton extends StatefulWidget {
  @override
  _DefaultDropDownButton createState() => _DefaultDropDownButton();
}

class _DefaultDropDownButton extends State<DefaultDropDownButton> {
  late String choice = 'name';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: choice,
      items: [
        DropdownMenuItem(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/home_image.png'),
                ),
                SizedBox(width: 15.0,),
                Text("Tanmay Firke")
              ],
            ),
            value: 'name'),
        DropdownMenuItem(child: Text("Profile"), value: 'surname'),
        DropdownMenuItem(child: Text("Your Channel"), value: 'fathername'),
        DropdownMenuItem(child: Text("Log Out"), value: 'mothername'),
      ],
      onChanged: (value) {
        setState(() {
          choice = value!;
        });
      },
      style: new TextStyle(
        color: Colors.white,
      ),
    );
  }
}




class DefaultTextFormField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String email = "";

  moveHome(BuildContext context){
    if(_formKey.currentState!.validate()){
      print("Your email is $email");
    }
  }
  @override
  Widget build(BuildContext context) {


    return Form(
              key:_formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "Invalid Email";
                      }
                      return null;
                    },
                    onChanged: (value){
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  MaterialButton(onPressed: (){moveHome(context);},child: Text("Click mi"),)
                ],
              ),
            );
  }
}
