import 'package:flutter/material.dart';

class AddPipeline extends StatefulWidget {
  const AddPipeline({Key? key}) : super(key: key);

  @override
  State<AddPipeline> createState() => _AddPipelineState();
}

class _AddPipelineState extends State<AddPipeline> with SingleTickerProviderStateMixin {
	
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Data Kanal"),
                Tab(text: "Data Badan Usaha"),
                Tab(text: "Data Potensi Bisnis"),
              ],
            ),
            title: const Text('Add Pipeline'),
			centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Padding(
				padding: EdgeInsets.all(20),
				child: Column(
					children: [
						InputText(context, "Kanal Distribusi"),
						const SizedBox(height: 12),
						InputText(context, "Agent"),
						const SizedBox(height: 12),
						InputText(context, "Email Agent"),
						const SizedBox(height: 12),
						InputText(context, "KA. Unit"),
						const SizedBox(height: 12),
						InputText(context, "KA. KPM"),
						const SizedBox(height: 12),
					],
				),
			  ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
	);
  }

  TextField InputText(BuildContext context, labelText) {
    return TextField(
		decoration: InputDecoration(
			enabledBorder: OutlineInputBorder(
				borderSide: BorderSide(color: const Color.fromARGB(255, 114, 109, 101)),
				borderRadius: BorderRadius.circular(10)
			),
			focusedBorder: OutlineInputBorder(
				borderSide: BorderSide(color: Color.fromARGB(255, 0, 123, 255)),
				borderRadius: BorderRadius.circular(30).copyWith(
					topRight: Radius.circular(0),
					topLeft: Radius.circular(0))
			),
			label: Row(
				mainAxisSize: MainAxisSize.min,
				children: [
					Text(
					labelText,
					style: Theme.of(context)
						.textTheme
						.titleMedium!
						.copyWith(fontWeight: FontWeight.bold),
				),
				],
			)
		),
	);
  }
}