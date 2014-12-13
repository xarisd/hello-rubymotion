class MainViewController < UIViewController
  def loadView
    self.view = TasksView.new

    navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(
        UIBarButtonSystemItemAdd,
        target: self,
        action: 'add_task'
    )
  end

  def viewDidLoad
    self.title = "Tasks"
    @task = Task.new
  end

  def add_task
    vc = AddTaskViewController.new
    vc.task = @task
    navigationController.pushViewController(vc, animated: true)
  end
end
