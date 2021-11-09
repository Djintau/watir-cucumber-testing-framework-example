# custom page object to handle styled radio button element
class HiddenRadioButton < PageObject::Elements::RadioButton
  def self.accessor_methods(accessor, name)
    accessor.send(:define_method, "#{name}_selected?") do
      self.send("#{name}_element").selected?
    end

    accessor.send(:define_method, "select_#{name}") do
      self.send("#{name}_element").select
    end
  end

  def select
    label_element.click unless selected?
  end

  def visible?
    label_element.visible?
  end

  def label_element
    element.browser.input(value: element.value).parent(tag_name: "label", class: "custom-radio")
  end
end
PageObject.register_widget :hidden_radio_button, HiddenRadioButton, :radio