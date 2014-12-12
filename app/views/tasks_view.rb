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

    scroll_view = UIScrollView.new
    scroll_view.frame = [[0, 200], [320, 368]]
    scroll_view.backgroundColor = UIColor.redColor
    addSubview(scroll_view)

    image = UIImage.imageNamed("slide")
    @image_view = UIImageView.new
    @image_view.frame = [[0,0], [image.size.width, image.size.height]]
    @image_view.backgroundColor = UIColor.lightGrayColor
    @image_view.image = image
    # image_view.contentMode = UIViewContentModeScaleAspectFit
    scroll_view.addSubview(@image_view)
    scroll_view.contentSize = image.size
    scroll_view.maximumZoomScale = 1.0
    scale_width = scroll_view.frame.size.width / scroll_view.contentSize.width
    scale_height = scroll_view.frame.size.height / scroll_view.contentSize.height
    scroll_view.minimumZoomScale = [scale_width, scale_height].min
    scroll_view.delegate = self

    self
  end

  def viewForZoomingInScrollView(scroll_view)
    @image_view
  end
end