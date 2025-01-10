/**
 * @return Partial<PlopGeneratorConfig>
 */
export function generateFeaturePackage() {
  return {
    description: "Generate feature package",
    prompts: [
      {
        type: "input",
        name: "feature_name",
        message: "What is Feature name?",
      },
    ],
    actions: [
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/.gitignore",
        templateFile: "templates/feature/template/.gitignore.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/.metadata",
        templateFile: "templates/feature/template/.metadata.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/pubspec.yaml",
        templateFile: "templates/feature/template/pubspec.yaml.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/README.md",
        templateFile: "templates/feature/template/README.md.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/lib/src/extension/index.dart",
        templateFile:
          "templates/feature/template/lib/src/extension/index.dart.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/lib/src/ui/component/index.dart",
        templateFile:
          "templates/feature/template/lib/src/ui/component/index.dart.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/lib/src/ui/index.dart",
        templateFile: "templates/feature/template/lib/src/ui/index.dart.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/lib/feature_{{snakeCase feature_name}}.dart",
        templateFile: "templates/feature/template/lib/feature_name.dart.hbs",
      },
      {
        type: "add",
        path: "feature/{{snakeCase feature_name}}/test/feature_{{snakeCase feature_name}}_test.dart",
        templateFile:
          "templates/feature/template/test/feature_name_test.dart.hbs",
      },
      {
        type: "dartPubGet",
      },
    ],
  };
}
