class FileInput < Formtastic::Inputs::FileInput
  def to_html
    input_wrapping do
      label_html <<
      builder.file_field(method, input_html_options) <<
      image_preview_content <<
      size_hint_html
    end
  end

  private

    def image_preview_content
      image_preview? ? image_preview_html : template.content_tag(:img, nil, class: "image-preview")
    end

    def image_preview?
      options[:image_preview] and @object.send(method).present?
    end

    def image_preview_html
      template.image_tag(@object.send(method).url, class: "image-preview")
    end

    def size_hint?
      options[:size_hint]
    end

    def size_hint_text
      t = @object.send(method).options[:styles]
      my_text = ''
      t.each_with_index do |k, i|
        unless i == 0
          my_text += ' / '
        end
        my_text += "#{k[0].to_s.capitalize}: #{k[1].gsub('#', '').gsub('>', '')} "
      end
      my_text
    end

    def size_hint_html
      if size_hint?
        template.content_tag(:p, 'Tamanhos gerados automaticamente (redimensiona, centraliza e corta) através da imagem selecionada:', class: 'size-hint-text inline-hints') +
        template.content_tag(:p, size_hint_text, class: 'size-hint-text inline-hints')
      else
        nil
      end
    end
end
