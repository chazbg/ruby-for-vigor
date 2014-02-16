require_relative 'RFVController'

class MenuInputProcessor
  def initialize(transport)
    @data_controller = Controller::DataController.new(transport)
  end
  
  def process(input)
    send(@data_controller.process, input)
  end
  
  private
  
  def process_main_menu_input(input)
    case input
    when '1'
      @data_controller.context_transition(:region_menu_transition)
    when '2'
      @data_controller.context_transition(:ultimate_bravery_menu_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end

  def process_region_menu_input(input)
    case input
    when 'na', 'euw', 'eune', 'kr', 'br'
      @data_controller.context_transition(:summoner_name_menu_transition, input)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end

  def process_summoner_name_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:summoner_menu_transition, input)
    end
  end

  def process_summoner_menu_input(input)
    case input
    when '1'
      @data_controller.context_transition(:matches_menu_transition)
    when '2'
      @data_controller.context_transition(:ranking_menu_transition)
    when '3'
      @data_controller.context_transition(:champion_suggestion_menu_transition)
    when '4'
      @data_controller.context_transition(:general_advice_menu_transition)
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end

  def process_matches_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:match_details_transition, input)
    end
  end

  def process_match_details_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end
  
  def process_ranking_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end

  def process_champion_suggestion_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end

  def process_general_advice_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end

  def process_ultimate_bravery_menu_input(input)
    case input
    when 'h'
      @data_controller.context_transition(:rollback_transition)
    when 'b'
      @data_controller.context_transition(:back_transition)
    else
      @data_controller.context_transition(:invalid_transition)
    end
  end
end