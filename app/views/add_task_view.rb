class AddTaskView < UIView
  attr_reader :text_field, :button

  def init
    super

    self.backgroundColor = UIColor.whiteColor

    @text_field = UITextField.new
    @text_field.frame = [[20, 100], [280, 50]]
    @text_field.backgroundColor = UIColor.lightGrayColor
    @text_field.placeholder = "Enter your task"
    addSubview(@text_field)

    @button = UIButton.new
    @button.setTitle("Save", forState: UIControlStateNormal)
    @button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    @button.frame = [[20, 150], [280, 30]]
    addSubview(@button)

    self
  end
end