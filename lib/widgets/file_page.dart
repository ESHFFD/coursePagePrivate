import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

//file added screen
class FilePage extends StatefulWidget {
  final List<PlatformFile> files;

  const FilePage({Key? key, required this.files}) : super(key: key);

  @override
  State<FilePage> createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('file part'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 10),
          itemCount: widget.files.length,
          itemBuilder: (context, index) {
            final file = widget.files[index];
            return buildFile(file);
          }),
    );
  }
}

Widget buildFile(PlatformFile file) {
  final kb = file.size / 1024;
  final mb = kb / 1024;
  final fileSize =
      mb >= 1 ? '${mb.toStringAsFixed(2)}MB' : '${kb.toStringAsFixed(2)}KB';
  final extention = file.extension ?? 'none';

  return InkWell(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(12)),
            child: Text('.$extention'),
          )),
          Text(file.name),
          Text(fileSize)
        ],
      ),
    ),
  );
}
