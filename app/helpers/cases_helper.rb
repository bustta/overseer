module CasesHelper
  def tabForNewCase(thisCase)
    if (thisCase.CaseStart.to_date == DateTime.now.to_date )
      content_tag(:button, 'New', :class => 'btn btn-danger btn-xs')
    end
  end

  def tabOnDigging(thisCase)
    if (DateTime.now >= thisCase.CaseStart && DateTime.now <= thisCase.CaseEnd)
      content_tag(:button, 'Digging', :class => 'btn btn-warning btn-xs')
    end
  end

  def dispCaseName(thisCase)
    content_tag(:span,
      truncate(thisCase.CaseName, :length => 30),
      :class => 'caseNameSpan',
      :title => thisCase.CaseName)
  end

end
