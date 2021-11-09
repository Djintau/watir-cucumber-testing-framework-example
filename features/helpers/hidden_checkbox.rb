# custom page object to handle styled checkbox element
class HiddenCheckbox < PageObject::Elements::CheckBox
  def self.accessor_methods(accessor, name)
    accessor.send(:define_method, "#{name}_checked?") do
      self.send("#{name}_element").checked?
    end

    accessor.send(:define_method, "check_#{name}") do
      self.send("#{name}_element").check
    end
  end

  def check
    label_element.click unless checked?
  end

  def visible?
    label_element.visible?
  end

  def label_element
    element.browser.input(id: element.id).parent(tag_name: "div", class: "custom-checkbox")
  end
end
PageObject.register_widget :hidden_checkbox, HiddenCheckbox, :checkbox