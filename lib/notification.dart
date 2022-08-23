import 'package:flutter/material.dart';
import 'package:funku/components/catalog.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/notification_all.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationToday extends StatelessWidget {
  const NotificationToday({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TodayNo()
      
    );
  }
}

class TodayNo extends StatelessWidget {
  const TodayNo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
          },
          icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("Notifications", style: GoogleFonts.merriweather(
                       fontSize: 26,
                       fontWeight: FontWeight.normal,
                       color: Colors.white
                       )
                     )
                  ], 
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                      // Padding(padding: EdgeInsets.only(right: 0)),
                     
                      TextButton(
                        onPressed: null, 
                        child: Text('Mark all as Read',style: TextStyle(
                          fontSize: 12,
                          color: Colors.white70,
                          decoration: TextDecoration.underline
                        ),)
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 4,
                ),
           Expanded(child:  ListView.builder(

          itemCount: dummyList.length,
          itemBuilder: ( (context, index) {
        return ItemWidget(
              item: dummyList[index],
          );
      })),)
          ],
        )
        
      
      )
    );
  }
}

// class ConTent extends StatelessWidget {

//   final String child;
   
//   const ConTent({required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         height: 30,
//         color: Colors.amber,
//         child: Text(child),
//       ),
//     );
//   }
// }
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : 
      // assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.white24, Colors.white10],
          )
          ),
      
      child: ListTile(
        
        onTap: () {
          print("${item.name} pressed");
        },
        isThreeLine: true,
        
        title: Text(item.name,style: TextStyle(
              fontSize: 14
            ),),
        
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(item.desc ,style: TextStyle(
              color: Colors.white70,
              fontSize: 12
            ),),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(item.time,style: TextStyle(
              fontSize: 8
            ),),
              ],
            )
          ],
        ),
        
        textColor: Colors.white,
        
        
        
      ),
    );
  }
}