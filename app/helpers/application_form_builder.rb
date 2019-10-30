class ApplicationFormBuilder < Actionview::Helpers:::ApplicationFormBuilder
    attr_reader :vue_data

  def initialize(object_name, object, template, options)
    super(object_name, object, template, options)

    # Vue の初期化時に渡すデータを保持するハッシュ
    @vue_data = {}
  end
  
    def select_vue(methid, choices = [], potions = {}, html_options ={}, &block)
        html_options = inject_vmodel(method, html_options)
        select(method, choices, options, html_options, &block)
    end

    def inject_vmodel(model, html_options)

        @vue_data[method] = object[method]
        html_options.merge('v-model': method)
    end
end