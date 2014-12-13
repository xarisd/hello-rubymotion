class AddTaskView < UIView
  attr_accessor :layout_guide
  def layout_views
    @title_label.translatesAutoresizingMaskIntoConstraints = false
    @notes_label.translatesAutoresizingMaskIntoConstraints = false
    addConstraint(
        NSLayoutConstraint.constraintWithItem(
            @title_label,
            attribute: NSLayoutAttributeTop,
            relatedBy: NSLayoutRelationEqual,
            toItem: layout_guide,
            attribute: NSLayoutAttributeBottom,
            multiplier: 1.0,
            constant: 20
        )
    )
    addConstraint(
        NSLayoutConstraint.constraintWithItem(
            @title_label,
            attribute: NSLayoutAttributeLeft,
            relatedBy: NSLayoutRelationEqual,
            toItem: self,
            attribute: NSLayoutAttributeLeft,
            multiplier: 1.0,
            constant: 20
        )
    )
    addConstraint(
        NSLayoutConstraint.constraintWithItem(
            @title_label,
            attribute: NSLayoutAttributeRight,
            relatedBy: NSLayoutRelationEqual,
            toItem: self,
            attribute: NSLayoutAttributeRight,
            multiplier: 1.0,
            constant: -20
        )
    )
    addConstraint(
        NSLayoutConstraint.constraintWithItem(
            @notes_label,
            attribute: NSLayoutAttributeTop,
            relatedBy: NSLayoutRelationEqual,
            toItem: @title_label,
            attribute: NSLayoutAttributeBottom,
            multiplier: 1.0,
            constant: 20
        )
    )
    addConstraint(
        NSLayoutConstraint.constraintWithItem(
            @notes_label,
            attribute: NSLayoutAttributeLeft,
            relatedBy: NSLayoutRelationEqual,
            toItem: self,
            attribute: NSLayoutAttributeLeft,
            multiplier: 1.0,
            constant: 20
        )
    )
    addConstraint(
        NSLayoutConstraint.constraintWithItem(
            @notes_label,
            attribute: NSLayoutAttributeRight,
            relatedBy: NSLayoutRelationEqual,
            toItem: self,
            attribute: NSLayoutAttributeRight,
            multiplier: 1.0,
            constant: -20
        )
    )
  end
  def init
    super
    setBackgroundColor UIColor.whiteColor
    @title_label = UILabel.new
    @title_label.text = "Do the dishes"
    @title_label.textAlignment = NSTextAlignmentCenter
    @title_label.textColor = UIColor.greenColor
    @title_label.font = UIFont.boldSystemFontOfSize(36)
    addSubview(@title_label)
    @notes_label = UILabel.new
    @notes_label.text = "Get some dishwashing liquid from the shops, and don't forget the plate in the bedroom"
    @notes_label.numberOfLines = 0
    @notes_label.font = UIFont.systemFontOfSize(14)
    addSubview(@notes_label)
    self
  end
end