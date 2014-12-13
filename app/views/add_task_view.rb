class AddTaskView < UIView
  attr_reader :title_field, :notes_field, :save_button
  attr_accessor :layout_guide

  def layout_views
    @title_field.translatesAutoresizingMaskIntoConstraints = false
    @notes_field.translatesAutoresizingMaskIntoConstraints = false
    @save_button.translatesAutoresizingMaskIntoConstraints = false

    # @title_field.right = self.right * 1.0 + -20
    # @title_field.left = self.left * 1.0 + 20
    addConstraints(
        NSLayoutConstraint.constraintsWithVisualFormat(
            '|-padding-[title_field]-padding-|',
            options: NSLayoutFormatDirectionLeadingToTrailing,
            metrics: { 'padding' => 20 },
            views: { 'title_field' => @title_field }
        )
    )
    addConstraints(
        NSLayoutConstraint.constraintsWithVisualFormat(
            '|-padding-[notes_field]-padding-|',
            options: NSLayoutFormatDirectionLeadingToTrailing,
            metrics: { 'padding' => 20 },
            views: { 'notes_field' => @notes_field }
        )
    )
    addConstraints(
        NSLayoutConstraint.constraintsWithVisualFormat(
            '|-padding-[save_button]-padding-|',
            options: NSLayoutFormatDirectionLeadingToTrailing,
            metrics: { 'padding' => 20 },
            views: { 'save_button' => @save_button }
        )
    )
    addConstraints(
        NSLayoutConstraint.constraintsWithVisualFormat(
            'V:[top_layout_guide]-padding-[title_field]-padding-[notes_field]-padding-[save_button]',
            options: NSLayoutFormatDirectionLeadingToTrailing,
            metrics: { 'padding' => 20 },
            views: { 'top_layout_guide' => layout_guide, 'title_field' => @title_field, 'notes_field' => @notes_field, 'save_button' => @save_button }
        )
    )
  end

  def init
    super

    setBackgroundColor UIColor.whiteColor

    @title_field = UITextField.new
    @title_field.placeholder = "Add your task"
    @title_field.textAlignment = NSTextAlignmentNatural
    # @title_field.textColor = UIColor.greenColor
    @title_field.font = UIFont.boldSystemFontOfSize(26)
    addSubview(@title_field)

    @notes_field = UITextField.new
    @notes_field.placeholder = "Add your notes"
    # @notes_field.numberOfLines = 0
    @notes_field.font = UIFont.systemFontOfSize(14)
    addSubview(@notes_field)

    @save_button = UIButton.new
    @save_button.setTitle("Save", forState: UIControlStateNormal)
    @save_button.setTitleColor(UIColor.redColor, forState: UIControlStateNormal)
    addSubview(@save_button)

    self
  end
end