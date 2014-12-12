class AddTaskViewController < UIViewController
  attr_accessor :task

  def loadView
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    @text_field = UITextField.new
    @text_field.frame = [[20, 100], [280, 50]]
    @text_field.backgroundColor = UIColor.lightGrayColor
    @text_field.placeholder = "Enter your task"
    # @text_field.addTarget(self, action: :save_task, forControlEvents: UIControlEventEditingDidEnd)

    view.addSubview(@text_field)

    button = UIButton.new
    button.setTitle("Save", forState: UIControlStateNormal)
    button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    button.addTarget(self, action: :save_task, forControlEvents: UIControlEventTouchUpInside)
    button.frame = [[20, 150], [280, 30]]
    view.addSubview(button)

  end

  # def viewWillAppear(animated)
  #   @text_field.text = @task.title
  # end

  def viewDidLoad
    self.title = "Add Task"
  end

  def save_task
    puts "Saved!"
    task.title = @text_field.text
    navigationController.popViewControllerAnimated(true) if navigationController
  end

end