import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/repo_service.dart';

class RepoView extends StatefulWidget {
  late String username;
  RepoView(this.username);
  @override
  State<RepoView> createState() => _RepoViewState();
}

class _RepoViewState extends State<RepoView> {

  List<Notification> notifications=[];
  late int reposCount=0;
  late List repos;

  Future initialize() async {
    repos = [];
    repos = await RepoService.getAllRepo(widget.username);
    setState(() {
      reposCount = repos.length;
      repos = repos;
    });
  }

  @override
  void initState() {

    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Repositorios'),
          centerTitle: true,
          backgroundColor: Colors.amber.shade600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
        ),
        body: ListView.builder (
            itemCount: (this.reposCount==null) ? 0 : this.reposCount,
            itemBuilder: (BuildContext context, int position) {
              return Padding(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: Material(
                    borderRadius: BorderRadius.circular(18.0),
                    elevation: 2,
                    child: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(20,10,20,10),
                      title: Text(repos[position].name),
                        subtitle: Column(
                          children: [
                            InkWell(
                                child: new Text(repos[position].html_url, style: TextStyle(color: Colors.amber),),
                                onTap: () => launch(repos[position].html_url.toString())
                            ),
                          Text(
                              (repos[position].description==null)?
                                'No hay descripcion':repos[position].description.toString()
                            ),
                          ],
                        ),
                        trailing: Text(repos[position].private? 'Private':'Public'),
                    )));
            }
        )
    );
  }



}