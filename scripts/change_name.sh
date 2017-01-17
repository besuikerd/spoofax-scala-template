#!/bin/bash

#update main pom file
OLD_NAME="language_name"
PROJECT_NAME="bla"
GROUP_ID="bli.blo"
GROUP_ID_FOLDER=${GROUP_ID//./\/}

#rename all folders
# mv "$OLD_NAME.eclipse/" "$PROJECT_NAME.eclipse/"
# mv "$OLD_NAME.eclipse.feature/" "$PROJECT_NAME.eclipse.feature/"
# mv "$OLD_NAME.eclipse.site/" "$PROJECT_NAME.eclipse.site/"
# mv "$OLD_NAME.example/" "$PROJECT_NAME.example/"
# mv "$OLD_NAME.lang/" "$PROJECT_NAME.lang/"
# mv "$OLD_NAME.scala/" "$PROJECT_NAME.scala/"

#main pom file
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   pom.xml


#.eclipse pom file
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   -e "0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/"\
#   "$PROJECT_NAME.eclipse/pom.xml"

#.eclipse.feature pom file
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   -e "0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/"\
#   "$PROJECT_NAME.eclipse.feature/pom.xml"

#.eclipse.site files
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   -e "0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/"\
#   "$PROJECT_NAME.eclipse.site/pom.xml"
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/2" \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   "$PROJECT_NAME.eclipse.site/site.xml"

#.example files
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   -e "0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/"\
#   -e "0,/<groupId>.*<\/groupId>/!{0,/<groupId>.*<\/groupId>/! {0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/}}"\
#   "$PROJECT_NAME.example/pom.xml"
# sed \
#   -e "s/[^ ]*:$OLD_NAME/$GROUP_ID:$PROJECT_NAME/" \
#   "$PROJECT_NAME.example/metaborg.yaml"

#.lang files
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   -e "0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/"\
#   "$PROJECT_NAME.lang/pom.xml"
# sed \
#   -e "s/[^ ]*:$OLD_NAME/$GROUP_ID:$PROJECT_NAME/" \
#   -e "s/name: $OLD_NAME/name: $PROJECT_NAME/" \
#   "$PROJECT_NAME.lang/metaborg.yaml"

# mv $PROJECT_NAME.lang/src/main/strategies/$OLD_NAME $PROJECT_NAME.lang/src/main/strategies/$PROJECT_NAME
# sed \
#   -e "s/package .*;/package $PROJECT_NAME.lang.strategies;/" \
#   "$PROJECT_NAME.lang/src/main/strategies/$PROJECT_NAME/lang/strategies/InteropRegisterer.java"
#
# sed \
#   -e "s/package .*;/package $PROJECT_NAME.lang.strategies;/" \
#   "$PROJECT_NAME.lang/src/main/strategies/$PROJECT_NAME/lang/strategies/Main.java"

sed \
  -e "s/package .*;/package $PROJECT_NAME.lang.strategies;/" \
  -e "s/import .*\.EditorServices/import $GROUP_ID.$PROJECT_NAME.EditorServices/" \
  "$PROJECT_NAME.lang/src/main/strategies/$PROJECT_NAME/lang/strategies/editor_analyze_0_0.java"

sed \
  -e "s/package .*;/package $PROJECT_NAME.lang.strategies;/" \
  -e "s/import .*\.EditorServices/import $GROUP_ID.$PROJECT_NAME.EditorServices/" \
  "$PROJECT_NAME.lang/src/main/strategies/$PROJECT_NAME/lang/strategies/editor_hover_0_0.java"

  sed \
    -e "s/package .*;/package $PROJECT_NAME.lang.strategies;/" \
    -e "s/import .*\.EditorServices/import $GROUP_ID.$PROJECT_NAME.EditorServices/" \
    "$PROJECT_NAME.lang/src/main/strategies/$PROJECT_NAME/lang/strategies/editor_resolve_0_0.java"

sed \
  -e "s/$OLD_NAME/$PROJECT_NAME" \
  "$PROJECT_NAME.lang/editor/Main.esv"



#.scala files
# sed \
#   -e "s/$OLD_NAME/$PROJECT_NAME/" \
#   -e "0,/<groupId>.*<\/groupId>/s/<groupId>.*<\/groupId>/<groupId>$GROUP_ID<\/groupId>/"\
#   "$PROJECT_NAME.scala/pom.xml"
# mkdir -p "$PROJECT_NAME.scala/src/main/scala/$GROUP_ID_FOLDER/$PROJECT_NAME"
# mv $PROJECT_NAME.scala/src/main/scala/EditorServices.scala $PROJECT_NAME.scala/src/main/scala/$GROUP_ID_FOLDER/$PROJECT_NAME/EditorServices.scala

# sed \
#   -e "1s/^/package $GROUP_ID.$PROJECT_NAME\n\n/" \
#   $PROJECT_NAME.scala/src/main/scala/$GROUP_ID_FOLDER/$PROJECT_NAME/EditorServices.scala
