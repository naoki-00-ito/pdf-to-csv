class PdfsController < ApplicationController
  # アップ済のPDF一覧表示
  def index
    @pdfs = Pdf.all
  end

  # PDFの情報を表示
  def show
    @pdf = Pdf.find(params[:id])
  end

  # PDFのアップ
  def new
    @pdf = Pdf.new
  end

  # PDFの登録
  def create
    @upload_pdf = params[:pdf]

    puts "----- upload -----"
    p @upload_pdf
    puts "----- /upload -----"

    if @upload_pdf.nil?
      # PDFファイルが選択されていない場合はエラーを返す
      @error_message = 'PDFが選択されていません。'
      render 'new', status: :unprocessable_entity
    else
      @error_message = nil
      @file_name = params[:pdf]["upload_pdf"].original_filename

      # TODO: PDFの内容を取得する
      # @file_content = ???

      # TODO: nameを@file_name、contentを@file_contentとしてDBに保存する

      puts "----- ファイル名 -----"
      p @file_name
      puts "----- /ファイル名 -----"

      # TODO: showへリダイレクトさせる

    end
  end

  def show

  end

end
