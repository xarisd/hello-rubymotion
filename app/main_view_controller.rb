class MainViewController < UIViewController
  def loadView
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    button = UIButton.new
    button.setTitle("Add task", forState: UIControlStateNormal)
    button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
    button.frame = [[20, 100], [280, 30]]
    view.addSubview(button)
  end

  def viewDidLoad
    self.title = "Tasks"
  end


  def add_task
    navigationController.pushViewController(AddTaskViewController.new, animated: true)
  end
end

