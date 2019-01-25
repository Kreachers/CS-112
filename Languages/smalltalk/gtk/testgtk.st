 | window |
 PackageLoader fileInPackage: 'GtkTools'.
 window := GtkTools GtkMainWindow new.
 window
       centralWidget: (GTK.GtkButton labeled: 'Hello World');
       title: 'simple';
       statusMessage: 'GTK Tutorial';
       showAll. " Display me and my children "
GTK.Gtk main.
