class String
  def camelize
    split('_').map(&:capitalize).join('')
  end

  def underscore
    split(/(?=[A-Z][a-z]*)/).join('_').downcase
  end
end
