class MainViewController < UIViewController
  def loadView
    self.view = UIView.new

    label = UILabel.new
    label.text = "Hello RubyMotion!"
    label.textColor = UIColor.colorWithRed(0.8, green: 0.1, blue: 0.4, alpha: 1.0)
    label.frame = [[20, 100], [280, 30]]
    view.addSubview(label)

    red_square = UIView.new
    red_square.frame = [[135, 150], [50, 50]]
    red_square.backgroundColor = UIColor.redColor
    view.addSubview(red_square)
  end
end

