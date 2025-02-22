defmodule Runner.LanguageMeta do
  use TypedStruct
  @derive Jason.Encoder

  typedstruct do
    field(:name, String.t())
    field(:generate_checker?, boolean(), default: true)
    field(:slug, String.t())
    field(:checker_version, pos_integer(), default: 1)
    field(:version, String.t())
    field(:check_dir, String.t())
    field(:solution_file_name, String.t())
    field(:checker_file_name, String.t())
    field(:docker_image, String.t())
    field(:solution_template, String.t())
    field(:return_template, String.t())
    field(:expected_template, String.t())
    field(:generate_types_file?, boolean(), default: false)
    field(:arguments_template, %{argument: String.t(), delimiter: String.t()})
    field(:types, map())
    field(:checker_meta, map())
    field(:default_values, map())

    # asserts generator params
    field(:generator_dir, String.t())
    field(:arguments_generator_template, String.t())
    field(:arguments_generator_file_name, String.t())
    field(:asserts_generator_file_name, String.t())
  end
end
