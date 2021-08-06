class DonateController < ApplicationController
  before_action :authenticate_user_admin,{only:[:raisedonate_admin]}

  def donate
    @donate = Donate.find(params[:donate][:donate_image])
  end

  def index
  end

  def index_admin
    @donates = Donate.all.order(created_at: :desc)
  end

  def raisedonate_admin
    @donate = Donate.find_by(id: params[:id])
  end

  def new
    @donate = Donate.new
  end

  def donate_show
    @donate = Donate.find_by(id: params[:id])
  end
  
  def create
    @donate = Donate.new(
      title: params[:title],
      donate_image: "default_donate.jpg",
      body: params[:body],
      mainbody: "<div><strong>はじめに・ご挨拶<br></strong><br></div><div>信頼性を高めるため、ご本人もしくは実行チームの簡単な自己紹介を書きましょう。<br><br></div><div><br></div><div><strong>このプロジェクトで実現したいこと<br></strong><br></div><div>企画内容と目的を具体的かつ論理的に書きましょう。<br><br></div><div><br></div><div><strong>プロジェクトをやろうと思った理由<br></strong><br></div><div>プロジェクト立ち上げの背景や経緯を具体的に書きましょう。<br><br></div><div><br></div><div><strong>これまでの活動<br></strong><br></div><div>プロジェクトにつながる過去の活動や体験を書きましょう。<br><br></div><div><br></div><div><strong>資金の使い道<br></strong><br></div><div>集めた支援金用途や内訳を書きましょう。<br>CAMPFIRE手数料に使用されることも必ず記載しましょう。<br><br></div><div><br></div><div><strong>リターンについて<br></strong><br></div><div>リターンに関する説明や画像を載せましょう。<br><br></div><div><br></div><div><strong>実施スケジュール<br></strong><br></div><div>プロジェクト実施の計画を時系列で書きましょう。<br><br></div><div><br></div><div><strong>最後に<br></strong><br></div><div>応援したくなるような熱いメッセージを書きましょう。<br><br></div><div><br></div><div>＜プロジェクトオーナーについて（特商法上の表記）＞<br>※プロジェクトオーナーとして資金を集めるにあたり、特商法に基づき次の表記をお願いしております（法人、個人を問いません）。以下の雛形をご利用ください。<br><br></div><div>■特定商取引法に関する記載<br>&nbsp;●販売事業者名：XXXXXXXXX<br>&nbsp;※省略の場合には以下の文言をご記載ください。<br>&nbsp;「請求があり次第提供致しますので、必要な方はメッセージ機能にてご連絡ください。」<br>&nbsp;●代表者または通信販売に関する業務の責任者の氏名：・・・<br>&nbsp;※法人としてプロジェクトを起案する場合にのみご記載ください。<br>&nbsp;※個人としてプロジェクトを起案する場合（販売事業者が個人）は不要となります。<br>&nbsp;※省略の場合には以下の文言をご記載ください。<br>&nbsp;「請求があり次第提供致しますので、必要な方はメッセージ機能にてご連絡ください。」<br>&nbsp;●事業者の住所/所在地：〒123-4567 XXXXXXXXXX 1-1-1<br>&nbsp;※省略の場合には以下の文言をご記載ください。<br>&nbsp;「請求があり次第提供致しますので、必要な方はメッセージ機能にてご連絡ください。」<br>&nbsp;●事業者の電話番号：Tel: 010-1234-XXXX<br>&nbsp;※省略の場合には以下の文言をご記載ください。<br>&nbsp;「請求があり次第提供致しますので、必要な方はメッセージ機能にてご連絡ください。」<br>&nbsp;●送料：送料込み（離島価格など例外がある場合には記載）<br>&nbsp;●対価以外に必要な費用：プロジェクトページ、リターンに記載のとおり。<br>&nbsp;●ソフトウェアに係る取引である場合のソフトウェアの動作環境：該当なし / XXXXXXXXX<br>&nbsp;●その他記載事項：プロジェクトページ、リターン記載欄、共通記載欄（<a href=\"https://camp-fire.jp/legal%EF%BC%89%E3%82%92%E3%81%94%E7%A2%BA%E8%AA%8D%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84%E3%80%82\">https://camp-fire.jp/legal）をご確認ください。</a><br>あ<br><br></div><div><br></div><div>＜募集方式について＞<br>本プロジェクトはAll-in方式で実施します。目標金額に満たない場合も、計画を実行し、リターンをお届けします。a<br><br></div>",
      asp_money: params[:asp_money],
      end_date: params[:end_date],
      donate_image_sub: params[:donate_image_sub],
      perk_price: params[:perk_price],
      perk_body: params[:perk_body],
      perk_image: params[:perk_image],
      video_url: params[:video_url]
    )
    if @donate.save
      session[:donate_id] = @donate.id
      flash[:notice] = "投稿を完了しました"
      redirect_to("/donate/#{@donate.id}")
    else
      @donate.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("/donate/raisedonate_admin")
    end
  end

  def edit
    @donate = Donate.find_by(id: params[:id])
  end

  def outline
    @donate = Donate.find_by(id: params[:id])
  end

  def mainbody
    @donate = Donate.find_by(id: params[:id])
  end

  def other
    @donate = Donate.find_by(id: params[:id])
  end

  def perk
    @donate = Donate.find_by(id: params[:id])
  end

  def visual
    @donate = Donate.find_by(id: params[:id])
  end

  def preview
    @donate = Donate.find_by(id: params[:id])
  end

  def certification
    @donate = Donate.find_by(id: params[:id])
  end

  def end_date
    @donate = Donate.find_by(id: params[:id])
    @date = date.today
    @date_remaining = @donate.end_date - @date
  end

  def update
    @donate = Donate.find_by(id: params[:id])
    @donate.update(donate_params)
    if @donate.save
      flash[:notice] = "編集内容が送信されました"
      redirect_to("/donate/#{@donate.id}/preview")
    else
      @donate.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("/donate/#{@donate.id}/edit")
    end
  end

  def destroy
    @donate = Donate.find_by(id: params[:id])
    @donate.destroy
    flash[:notice] = "アカウントを削除しました"
    redirect_to("/")
  end
end

private
def donate_params
  params.permit(:title, :body, :asp_money, :end_date, :perk_price, :perk_body, :video_url, :donate_image, :donate_image_sub, :donate_image_cache, :mainbody, :content)
end
