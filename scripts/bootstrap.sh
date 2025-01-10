#! /bin/bash

echo ""
echo "    ##      #####    ####     ##### ";
echo "   ####    ##   ##    ##     ##   ## ";
echo "  ##  ##   #          ##     # ";
echo "  ##  ##    #####     ##      ##### ";
echo "  ######        ##    ##          ## ";
echo "  ##  ##   ##   ##    ##     ##   ## ";
echo "  ##  ##    #####    ####     ##### ";
echo ""

# Project root directory
FILE_PATH=$(dirname "$0")
cd "$FILE_PATH/../" || exit

echo "🚀 Bootstrap start"
echo "🚀 Working directory: $(pwd)"

##############################################################################
##
##  Git commit message
##
##############################################################################
echo ""
echo "🚀 Git commit message: Start"
if type git >/dev/null 2>&1; then
  git config commit.template commit-template
  echo "🎉 Git commit message: git config commit.template is $(pwd)/$(git config commit.template)"
  echo "✅ Git commit message: Success"
else
  echo "⚠️ Git commit message: Skip the git command as it could not be found."
fi

##############################################################################
##
##  mise
##
##############################################################################
echo ""
echo "🚀 mise install: Start"
if type mise >/dev/null 2>&1; then
  if mise install; then
    echo "✅ mise install: Success"
  else
    echo "🚫 mise install: Failed"
  fi
else
  echo "⚠️ mise install: Skip mise because it could not be found."
  echo "⚠️ mise install: See https://mise.jdx.dev/getting-started.html for installation."
fi

##############################################################################
##
##  bun
##
##############################################################################
echo ""
echo "🚀 bun install: Start"
if type bun >/dev/null 2>&1; then
  if bun install; then
    echo "✅ bun install: Success"
  else
    echo "🚫 bun install: Failed"
  fi
else
  echo "⚠️ bun install: Skip bun because it could not be found."
  echo "⚠️ bun install: This may be due to the fact that the mise installation has not been completed."
fi

##############################################################################
##
##  lefthook
##
##############################################################################
echo ""
echo "🚀 lefthook install: Start"
if type lefthook >/dev/null 2>&1; then
  if lefthook install; then
    echo "✅ lefthook install: Success"
  else
    echo "🚫 lefthook install: Failed"
  fi
else
  echo "⚠️ lefthook install: Skip bun because it could not be found."
  echo "⚠️ lefthook install: This may be due to the fact that the mise installation has not been completed."
fi

##############################################################################
##
##  Generate gitignore target files
##
##############################################################################
echo ""
source scripts/gen_gitignore_files.sh

##############################################################################
##
##  Dart
##
##############################################################################
echo ""
echo "🚀 dart pub get: Start"
if type dart >/dev/null 2>&1; then
  if dart pub get; then
    echo "✅ dart pub get: Success"
  else
    echo "🚫 dart pub get: Failed"
  fi
else
  echo "⚠️ bun install: Skip dart because it could not be found."
  echo "⚠️ bun install: This may be due to the fact that the mise installation has not been completed."
fi

##############################################################################
##
##  Melos
##
##############################################################################
echo ""
echo "🚀 melos bootstrap:post_hooks: Start"
if type melos >/dev/null 2>&1; then
  if melos bootstrap:post_hooks; then
    echo "✅ melos bootstrap:post_hooks: Success"
  else
    echo "🚫 melos bootstrap:post_hooks: Failed"
  fi
else
  echo "⚠️ melos bootstrap:post_hooks: Skip melos because it could not be found."
  echo "⚠️ melos bootstrap:post_hooks: See https://melos.invertase.dev/getting-started for installation."
fi

##############################################################################
##
##  Finish
##
##############################################################################
echo ""
echo "🚀 Bootstrap finished"
