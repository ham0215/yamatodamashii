RSpec.describe Yamatodamashii do
  let(:yama) { Struct.new(:yamatodamashii) { include Yamatodamashii } }
  let(:大和魂) { yama.new }

  it "もしが真" do
    結果 = 大和魂.もし(大和魂.真).だったら{'もしを出力'}.または(大和魂.真).だったら{'またはを出力'}.それ以外だったら{'それ以外を出力'}.。
    expect(結果).to eq('もしを出力')
  end

  it "またはが真" do
    結果 = 大和魂.もし(大和魂.偽).だったら{'もしを出力'}.または(大和魂.真).だったら{'またはを出力'}.それ以外だったら{'それ以外を出力'}.。
    expect(結果).to eq('またはを出力')
  end

  it "それ以外" do
    結果 = 大和魂.もし(大和魂.偽).だったら{'もしを出力'}.または(大和魂.偽).だったら{'またはを出力'}.それ以外だったら{'それ以外を出力'}.。
    expect(結果).to eq('それ以外を出力')
  end
end
