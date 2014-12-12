class TasksView < UIView
  attr_reader :button, :label

  def init
    super

    self.backgroundColor = UIColor.whiteColor

    @button = UIButton.new
    @button.setTitle("Add task", forState: UIControlStateNormal)
    @button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    @button.frame = [[20, 100], [280, 30]]
    addSubview(@button)

    @label = UILabel.new
    @label.frame = [[20, 150], [280, 30]]
    addSubview(@label)

    self
  end
end