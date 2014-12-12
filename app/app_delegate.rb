class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # rootViewController = UIViewController.alloc.init
    # rootViewController.title = 'hello_rubymotion'
    # rootViewController.view.backgroundColor = UIColor.whiteColor

    # navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    # @window.rootViewController = navigationController

    color = UIColor.colorWithRed(0.8, green: 0.1, blue: 0.4, alpha: 1.0)

    label = UILabel.new
    label.text = "Hello RubyMotion!"
    label.textColor = color
    label.frame = [[20, 100], [280, 30]]
    @window.addSubview(label)

    red_square = UIView.new
    red_square.frame = [[135, 150], [50, 50]]
    red_square.backgroundColor = UIColor.redColor
    @window.addSubview(red_square)

    @window.backgroundColor = UIColor.grayColor

    @window.makeKeyAndVisible

    true
  end
end
