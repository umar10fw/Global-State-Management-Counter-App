import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:global_state_management_counter_app/AddRemoveEdit/addList.dart';
import 'package:global_state_management_counter_app/providerHelper/mapProvider.dart';
import 'package:provider/provider.dart';

class Listfile extends StatelessWidget {
  const Listfile({super.key});

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(
        title: Text("Add List"),
      ),
      body: Consumer<MapProvider>(
        builder: (ctx, Provider, __) {
          var alldata = Provider.getData();
          return alldata.isEmpty
              ? Center(
                  child: Text("No data"),
                )
              : ListView.builder(
                  itemCount: alldata.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${alldata[index]['Name']}"),
                      subtitle: Text("${alldata[index]['Contact#']}"),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  context.read<MapProvider>().updateData({
                                    "Name": "updateData",
                                    "Contact#": "0300-1234567",
                                  }, index);
                                },
                                icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {
                                  context.read<MapProvider>().removeData(index);
                                },
                                icon: Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    );
                  });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Addlist(),
              ));
        },
        child: Icon(CupertinoIcons.forward),
      ),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:global_state_management_counter_app/mapProvider.dart';
// import 'package:provider/provider.dart';
//
// class Listfile extends StatelessWidget {
//   const Listfile({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Contact List")),
//       body: Consumer<MapProvider>(
//         builder: (ctx, provider, __) {
//           var alldata = provider.getData();
//           return alldata.isEmpty
//               ? const Center(
//             child: Text("No data"),
//           )
//               : ListView.builder(
//             itemCount: alldata.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(alldata[index]['Name'] ?? ''),
//                 subtitle: Text(alldata[index]['Contact#'] ?? ''),
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           context.read<MapProvider>().addData({
//             "Name": "Muhammad Umar",
//             "Contact#": "0300-1234567",
//           });
//         },
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
