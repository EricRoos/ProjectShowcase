class ExampleComponentStories < ViewComponent::Storybook::Stories
  title "atoms/example"

  story :hello_world do
    constructor(title: "my title") do
      "Hello World!"
    end
  end
end
