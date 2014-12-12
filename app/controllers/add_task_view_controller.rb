class AddTaskViewController < UIViewController
  attr_accessor :task

  def loadView
    self.view = AddTaskView.new
    view.button.addTarget(self, action: :save_task, forControlEvents: UIControlEventTouchUpInside)
  end

  def viewDidLoad
    self.title = "Add Task"
  end

  def save_task
    task.title = view.text_field.text
    navigationController.popViewControllerAnimated(true) if navigationController
  end
end