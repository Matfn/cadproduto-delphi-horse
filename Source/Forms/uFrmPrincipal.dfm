object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Produtos'
  ClientHeight = 531
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 531
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 977
    ExplicitHeight = 530
    object pnlOperacoes: TPanel
      Left = 0
      Top = 0
      Width = 981
      Height = 65
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 977
      object btnExcluir: TSpeedButton
        Left = 220
        Top = 0
        Width = 110
        Height = 63
        Align = alLeft
        Caption = 'Excluir'
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E2
          3B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D
          9D9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9D9D9D9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF9D9D9DA5A5A5A5A5A59C9C9CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA5A5A5A5A5A59D9D9DFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737CFE7E87FE626CF938
          42E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0626CF97E87FE
          737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DA3A3A3A9A9
          A9AAAAAAA5A5A59C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C
          9C9CA5A5A5AAAAAAA9A9A9A3A3A39D9D9DFFFFFFFFFFFFFFFFFFFFFFFF3842E0
          4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
          FFFFFFFFFF9C9C9CA0A0A0A5A5A5A7A7A7A9A9A9ABABABA6A6A69C9C9CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA6A6A6ABABABA9A9A9A7A7A7A5A5A5A0A0
          A09C9C9CFFFFFFFFFFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE82
          8CFE616BF93943E1FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE
          626BF85961F1464FE73741DFFFFFFFFFFFFFFFFFFF9C9C9C9F9F9FA3A3A3A5A5
          A5A7A7A7AAAAAAABABABA5A5A59D9D9DFFFFFFFFFFFFFFFFFF9D9D9DA5A5A5AB
          ABABAAAAAAA7A7A7A5A5A5A3A3A39F9F9F9C9C9CFFFFFFFFFFFFFFFFFFFFFFFF
          3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
          E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF9C9C9CA0A0A0A4A4A4A6A6A6A7A7A7A9A9A9AAAAAAA4A4A4
          9D9D9DFFFFFF9D9D9DA4A4A4AAAAAAA9A9A9A7A7A7A6A6A6A4A4A4A0A0A09C9C
          9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85A62F2616AF766
          6FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE666FFA616AF75A62F2
          4851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA0A0
          A0A3A3A3A5A5A5A6A6A6A8A8A8A8A8A8A7A7A79D9D9DA7A7A7A8A8A8A8A8A8A6
          A6A6A5A5A5A3A3A3A0A0A09C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
          FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C9F9F9FA3A3A3A4A4A4A5A5A5A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A5A5A5A4A4A4A3A3A39F9F9F9C9C9CFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E
          55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF9C9C9C9E9E9EA1A1A1A3A3A3A3A3A3A4A4A4A4A4A4A4A4A4A3A3A3A3A3A3A1
          A1A19E9E9E9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
          F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA1A1A1A3A3A3A3A3A3
          A4A4A4A4A4A4A4A4A4A3A3A3A3A3A3A1A1A19C9C9CFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36
          40DE575FF05A62F25C64F35C64F35C64F35A62F2575FF03640DEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9C9C9CA3A3A3A3A3A3A4A4A4A4A4A4A4A4A4A3A3A3A3A3A39C
          9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
          F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA1A1A1A3A3A3A3A3A3
          A4A4A4A4A4A4A4A4A4A3A3A3A3A3A3A1A1A19C9C9CFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E
          55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF9C9C9C9E9E9EA1A1A1A3A3A3A3A3A3A4A4A4A4A4A4A4A4A4A3A3A3A3A3A3A1
          A1A19E9E9E9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
          FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C9F9F9FA3A3A3A4A4A4A5A5A5A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A5A5A5A4A4A4A3A3A39F9F9F9C9C9CFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85A62F2616AF766
          6FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE666FFA616AF75A62F2
          4851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA0A0
          A0A3A3A3A5A5A5A6A6A6A8A8A8A8A8A8A7A7A79D9D9DA7A7A7A8A8A8A8A8A8A6
          A6A6A5A5A5A3A3A3A0A0A09C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
          E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF9C9C9CA0A0A0A4A4A4A6A6A6A7A7A7A9A9A9AAAAAAA4A4A4
          9D9D9DFFFFFF9D9D9DA4A4A4AAAAAAA9A9A9A7A7A7A6A6A6A4A4A4A0A0A09C9C
          9CFFFFFFFFFFFFFFFFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE82
          8CFE616BF93943E1FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE
          626BF85961F1464FE73741DFFFFFFFFFFFFFFFFFFF9C9C9C9F9F9FA3A3A3A5A5
          A5A7A7A7AAAAAAABABABA5A5A59D9D9DFFFFFFFFFFFFFFFFFF9D9D9DA5A5A5AB
          ABABAAAAAAA7A7A7A5A5A5A3A3A39F9F9F9C9C9CFFFFFFFFFFFFFFFFFF3842E0
          4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
          FFFFFFFFFF9C9C9CA0A0A0A5A5A5A7A7A7A9A9A9ABABABA6A6A69C9C9CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA6A6A6ABABABA9A9A9A7A7A7A5A5A5A0A0
          A09C9C9CFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737CFE7E87FE626CF938
          42E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0626CF97E87FE
          737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DA3A3A3A9A9
          A9AAAAAAA5A5A59C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C
          9C9CA5A5A5AAAAAAA9A9A9A3A3A39D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF9D9D9DA5A5A5A5A5A59C9C9CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CA5A5A5A5A5A59D9D9DFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E2
          3B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D
          9D9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9D9D9D9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = btnExcluirClick
        ExplicitLeft = 221
        ExplicitTop = 1
        ExplicitHeight = 71
      end
      object btnAlterar: TSpeedButton
        Left = 110
        Top = 0
        Width = 110
        Height = 63
        Align = alLeft
        Caption = 'Alterar'
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF7F6FAE1DCEBD5CCE2DDD7E8F9F8FBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEBEBEBE2E2E2E8E8E8FBFB
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F7A799C37359A0
          7458A1795EA39A87BCE5E1EFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
          F7F7C5C5C59F9F9F9E9E9EA2A2A2BABABAEEEEEEFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF8F8F8AAA8B27C6C9D866AB3977BBF8D6EB98164B1836DB4E8E4F2FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4B3B3B3A0A0A0A2A2A2A6A6A6A4A4A4A1A1
          A1ABABABF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDEDDDCC3C3C3939393929094
          BAB1CAAE99D89277CC8067BE9B8CCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7C0C0C0B0
          B0B0A4A4A4A4A4A4AFAFAFADADADA7A7A7A3A3A3BEBEBEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFD
          FFC8D6DEBAB9B98C8C8C626262818182CACACDEEECF69A88DB836ED47C6BC8FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDCACACAAFAFAFA3A3A3989898A0A0A0B2B2B2BCBCBCAAAA
          AAA5A5A5AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9FDFF83C8F41697F0449EE386ACCEB1B1B4ABABAF
          919194BABABEA8A6B17D6FD97064D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCECECEA2A2A2A9A9A9B3
          B3B3ACACACABABABA4A4A4AEAEAEAAAAAAA5A5A5A4A4A4FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF8CCDF42099
          EE289AF52C9CFC3BA3FE8EC9FDE4EAF4AEAEB16C6C6E6F6F715D5A8C675FDDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFDFDD1D1D1A3A3A3A4A4A4A5A5A5A7A7A7BABABABABABAABABAB9B9B9B9B9B
          9B9A9A9AA3A3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFDFF8BCCF41F99F0289AF5309DFA39A0FE41A4FF50AFFF7DBEEE
          A6A9AE5F5F6039393A3D3D3C7472D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD1D1D1A3A3A3A4A4A4A5A5A5A7A7A7A8
          A8A8ACACACB2B2B2AAAAAA9797978E8E8E8F8F8FB0B0B0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CCDF51F99EF289AF5319C
          FA399FFE42A4FF4FAEFE59B8FC6CC5F86BA9C74B4A4A2B2B2B5C5C5CF7F7FCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2
          A3A3A3A4A4A4A5A5A5A7A7A7A8A8A8AAAAAAABABABB2B2B2A9A9A99292928A8A
          8A9E9E9EFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF8ECEF41E99EE279BF5309CFA389FFE43A4FF4DADFF59B8FA64C2F771CCF6
          8DD5F45D7F87797978FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD2D2D2A3A3A3A4A4A4A5A5A5A7A7A7A8A8A8AAAAAAAB
          ABABADADADAEAEAEB8B8B89E9E9EB5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90CEF41E9AEF279BF5309DFA399FFD42A5
          FF4EADFF58B7FB64C0F770CAF684D6F88CDBFFDFEFF7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3A3A3A3A4A4A4
          A5A5A5A7A7A7A8A8A8AAAAAAABABABACACACAEAEAEB1B1B1B3B3B3ECECECFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97D1F61E
          9AED269BF42F9DFA389FFD41A4FF4DACFF57B6FC63C0F76FC9F583D6F88FDBFE
          B7E4FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFD6D6D6A3A3A3A4A4A4A5A5A5A7A7A7A8A8A8AAAAAAABABABACACACAE
          AEAEB1B1B1B3B3B3D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9ED5F61F9BEE259BF32E9DF8369FFD3EA3FF49ABFF55B4
          FC61BEF96BC8F67CD3F790DCFDB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8A4A4A4A4A4A4A5A5A5A6A6A6
          A8A8A8A9A9A9ABABABACACACAEAEAEB0B0B0B3B3B3D0D0D0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D7F51E99EC239AF22C
          9CF7359EFC3DA1FF48A8FF54B2FC5FBDF96BC5F67AD0F78DDBFCACE1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDC
          DCA5A5A5A3A3A3A5A5A5A6A6A6A7A7A7A9A9A9AAAAAAACACACADADADB0B0B0B3
          B3B3CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC2E6FA46B2F130A3F32498F6319CFB3CA1FF46A8FF52B0FD5EBBF969C5
          F679D0F68EDAFCA8E0FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE2E2E2AAAAAAA5A5A5A4A4A4A6A6A6A7A7A7A9A9A9
          AAAAAAACACACADADADAFAFAFB3B3B3C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5F1FFB0E5FFAFE4FDA1DDFD79C8FD42
          A5FF44A5FF51B1FD5CBBF968C4F679CFF58DDAFDA6E0FFF9FDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3B7B7B7B6B6
          B6B4B4B4AFAFAFA8A8A8A8A8A8AAAAAAACACACADADADAFAFAFB3B3B3C7C7C7FC
          FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B1E6FFC6F0FFDCF9FFDDFAFFC8F0FF97D7FF5EB8FC5BB9F967C4F579D1F78DDA
          FCA4DFFFF4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC4C4C4B9B9B9BCBCBCBCBCBCB9B9B9B3B3B3ACACACABABAB
          ADADADB0B0B0B2B2B2C5C5C5F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4E8FFBCEDFFD0F6FFD6F8FFD8F8FFC8
          F2FF98DAFE6EC8F775CEF58DDBFCA1DEFFEFF8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9B8B8B8BBBB
          BBBBBBBBBBBBBBBABABAB4B4B4AEAEAEAFAFAFB3B3B3C4C4C4F7F7F7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          A6DBF2C0F5FFC6F5FFC5F2FFCAF4FFCEF5FFBAEDFF90DAFB8CDBFD9DDCFFEDF9
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC0C0C0B9B9B9BABABAB9B9B9BABABABABABAB8B8B8B3B3B3
          B3B3B3C2C2C2F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFB889BA2A2C4CFB9ECFABCF2FFBBEFFFC1
          F1FFBEEFFFA1E3FF99DBFFE8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA5A5A5AFAFAFB7B7
          B7B9B9B9B8B8B8B9B9B9B9B9B9B5B5B5C1C1C1F2F2F2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F8
          948B87787A7A95B9C3B6F1FFB3EEFFB3EEFFB5EFFFA7E2FFE4F5FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF9F9F9A3A3A39E9E9EACACACB8B8B8B8B8B8B8B8B8B8B8B8C1C1C1
          EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEEF0F08988874B454460747995D1E4A4EBFF99
          E2FF97E1FFDBF3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4A2A2A29191919B9B
          9BB0B0B0B6B6B6B4B4B4B4B4B4E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCF
          393939454133869297D0E9F3E4F8FFF4FCFFFBFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE4E4E48E8E8E9C9C9CBEBEBEE3E3E3EEEEEEF8F8F8FDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = btnAlterarClick
        ExplicitLeft = 111
        ExplicitTop = 1
        ExplicitHeight = 71
      end
      object btnCadastrar: TSpeedButton
        Left = 0
        Top = 0
        Width = 110
        Height = 63
        Align = alLeft
        Caption = 'Cadastrar'
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A4
          7158A47158A47158A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E9E9E9E
          9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF58A37085BD9D85BD9D85BD9D85BD9D85BD9D85BD9D56A26EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9E9E9EA7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79D
          9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C84D5B15ED09D5ED09D5ED0
          9D5ED09D70C79C53A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FABABAB
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A69D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF53A0698CD8B662D19F62D19F62D19F62D19F73C89E509E67FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9E9E9EACACACA6A6A6A6A6A6A6A6A6A6A6A6A7A7A79C
          9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509D6592DBBA67D2A267D2A267D2
          A267D2A275C9A04D9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DADADAD
          A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4D9A6097DDBE6CD3A56CD3A56CD3A56CD3A57ACBA24A985EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9C9C9CAEAEAEA8A8A8A8A8A8A8A8A8A8A8A8A8A8A89A
          9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C99DEC072D5A872D5A872D5
          A872D5A87FCBA546955AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BAFAFAF
          A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9999999FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4593579ADFC078D6AC78D6AC78D6AC78D6AC84CDA9429155FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9AAFAFAFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA98
          9898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A370
          56A26C53A069509D654D9A6049975C4593573E8E5098DEBF7ED8B07ED8B07ED8
          B07ED8B08ACFAB3E8E5042915546955A4A985E4D9B63509E6753A06A56A26E58
          A4719E9E9E9E9E9E9F9F9F9E9E9E9D9D9D9C9C9C9B9B9B9A9A9A979797AFAFAF
          ABABABABABABABABABABABABABABAB9797979898989999999A9A9A9B9B9B9C9C
          9C9D9D9D9D9D9D9E9E9E58A471A7E6CA74CAA072C89D74C99F78CBA17ECBA482
          CCA888CFAA8ED0AD85DAB485DAB485DAB485DAB477C9A072C89D74C99F78CBA1
          7ECBA482CCA888CFAA8ED0AD85BD9D58A4719E9E9EB1B1B1A7A7A7A7A7A7A7A7
          A7A8A8A8A9A9A9A9A9A9AAAAAAABABABACACACACACACACACACACACACA8A8A8A7
          A7A7A7A7A7A8A8A8A9A9A9A9A9A9AAAAAAABABABA7A7A79E9E9E58A471A7E6CA
          8CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDC
          B88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB885BD9D58
          A4719E9E9EB1B1B1ADADADADADADADADADADADADADADADADADADADADADADADAD
          ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
          ADADADADA7A7A79E9E9E58A471A7E6CA93DDBC93DDBC93DDBC93DDBC93DDBC93
          DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC
          93DDBC93DDBC93DDBC93DDBC85BD9D58A4719E9E9EB1B1B1AEAEAEAEAEAEAEAE
          AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
          AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA7A7A79E9E9E58A471A7E6CA
          99DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DF
          C099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC085BD9D58
          A4719E9E9EB1B1B1AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFA7A7A79E9E9E58A471A7E6CAA0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0
          E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4
          A0E1C4A0E1C4A0E1C4A0E1C485BD9D58A4719E9E9EB1B1B1B0B0B0B0B0B0B0B0
          B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0
          B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A7A7A79E9E9E58A471A7E6CA
          94DDBD98DEBF9ADFC099DEC097DDBE92DBBA8CD8B684D5B1A7E3C8A7E3C8A7E3
          C8A7E3C87AD0A69ADFC09ADFC099DEC097DDBE92DBBA8CD8B684D5B185BD9D58
          A4719E9E9EB1B1B1AEAEAEAFAFAFAFAFAFAFAFAFAEAEAEADADADACACACABABAB
          B1B1B1B1B1B1B1B1B1B1B1B1A9A9A9AFAFAFAFAFAFAFAFAFAEAEAEADADADACAC
          ACABABABA7A7A79E9E9E58A47156A26E53A06A509E674D9B634A985E46955A42
          91553E8E508CD8B6ADE5CCADE5CCADE5CCADE5CC80D1A93E8E5045935749975C
          4D9A60509D6553A06956A26C58A37058A4719E9E9E9D9D9D9D9D9D9C9C9C9B9B
          9B9A9A9A999999989898979797ACACACB2B2B2B2B2B2B2B2B2B2B2B2AAAAAA97
          97979A9A9A9B9B9B9C9C9C9D9D9D9E9E9E9F9F9F9E9E9E9E9E9EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45935792DBBAB3E6D0B3E6D0B3E6
          D0B3E6D087D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AADADAD
          B3B3B3B3B3B3B3B3B3B3B3B3ABABAB989898FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF49975C97DDBEB9E8D3B9E8D3B9E8D3B9E8D38CD2AE46955AFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9B9B9BAEAEAEB4B4B4B4B4B4B4B4B4B4B4B4ABABAB99
          9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9A6099DEC0BEE9D6BEE9D6BEE9
          D6BEE9D691D3B14A985EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CAFAFAF
          B5B5B5B5B5B5B5B5B5B5B5B5ACACAC9A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF509D659ADFC0C3EAD9C3EAD9C3EAD9C3EAD996D3B24D9B63FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9D9D9DAFAFAFB5B5B5B5B5B5B5B5B5B5B5B5ACACAC9B
          9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A06998DEBFC7EBDBC7EBDBC7EB
          DBC7EBDB9BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EAFAFAF
          B6B6B6B6B6B6B6B6B6B6B6B6ADADAD9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF56A26C94DDBDCAECDDCAECDDCAECDDCAECDD9ED5B753A06AFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9F9F9FAEAEAEB6B6B6B6B6B6B6B6B6B6B6B6AEAEAE9D
          9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A370A7E6CAA7E6CAA7E6CAA7E6
          CAA7E6CAA7E6CA56A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EB1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B19D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF58A47158A47158A47158A47158A47158A47158A47158A471FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
          9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = btnCadastrarClick
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 71
      end
      object btnSair: TSpeedButton
        Left = 893
        Top = 0
        Width = 88
        Height = 63
        Align = alRight
        Caption = 'Sair'
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00044534386B5457837679
          9C9799B4B9BBCCD8D9E3F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686
          9F9F9FAEAEAEBEBEBECECECEDEDEDEEDEDEDFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C317C0C
          317C0C317C000A4D3B68AC33599D3152962B488C21397D15286C0A185C020C4F
          010D5103125704165D061C6507236B092872FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9090909090909090908787879B9B9B9898989797979595959191918E
          8E8E8A8A8A8787878787878989898A8A8A8B8B8B8D8D8D8E8E8EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0A317D0C0D0F0C0D0F0011564477BB4F82C75A8D
          D26295DA6699DE6598DD679ADF6497DC6295DA5787CC426EB32E55991D3F8400
          1257FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F838383838383888888
          9F9F9FA2A2A2A4A4A4A6A6A6A7A7A7A7A7A7A8A8A8A7A7A7A6A6A6A3A3A39D9D
          9D979797929292888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C35820E
          10120E0F120018613467AB3164A8396CB03F72B6487BBE5184C85A8DD25A8DD2
          5E91D65E91D65689CE4679BD3D70B4001962FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9090908484848383838A8A8A9B9B9B9A9A9A9C9C9C9D9D9DA0A0A0A2
          A2A2A4A4A4A4A4A4A5A5A5A5A5A5A3A3A39F9F9F9D9D9D8A8A8AFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0E3986101214111114001F6A3366AA295CA0295C
          A0285B9F275A9E376AAC6295DB315FAB25589C275A9E2A5DA13063A6396CB000
          206BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191918484848484848B8B8B
          9A9A9A9898989898989898989797979B9B9BA6A6A69A9A9A9797979797979898
          989A9A9A9C9C9C8B8B8BFFFFFFFFFFFFFFFFFFF9FCFAFFFFFFFFFFFF113F8B13
          141713131700226D3467AB2A5DA12B5EA22B5EA22B5EA23363A95F92D7305EA8
          2B5EA22B5EA22B5EA22B5CA03A6CB100236EFFFFFFFFFFFFFFFFFFFCFCFCFFFF
          FFFFFFFF9292928585858585858B8B8B9B9B9B9898989898989898989898989A
          9A9AA6A6A69999999898989898989898989898989C9C9C8C8C8CFFFFFFFFFFFF
          FFFFFF002FE6FFFFFFFFFFFF13429015161A14161A0024703467AB2A5DA12B5E
          A22B5EA22A5DA12E5CA25A8DD22E5CA52B5EA22B5EA22B5EA22655993B6DB200
          2571FFFFFFFFFFFFFFFFFF979797FFFFFFFFFFFF9393938585858585858C8C8C
          9B9B9B989898989898989898989898999999A4A4A49999999898989898989898
          989797979C9C9C8C8C8CFFFFFFFFFFFFFFFFFF002FE60018DAFFFFFF16469417
          181D16191E0026723467AB295CA02B5EA22B5EA2295B9F28569B5588CD2C59A2
          2B5EA22B5EA22B5EA22350943D6FB4012773FFFFFFFFFFFFFFFFFF9797979494
          94FFFFFF9494948686868686868C8C8C9B9B9B98989898989898989898989897
          9797A3A3A39898989898989898989898989595959D9D9D8C8C8CFFFFFFFFFFFF
          FFFFFF002FE61569FF0109CB184A9A191B21191B200028753568AC295CA02B5E
          A22B5EA2245297204A905083C82B579F2B5EA22B5EA22B5DA11E488C3E70B501
          2976FFFFFFFFFFFFFFFFFF9797979F9F9F9191919595958787878787878D8D8D
          9B9B9B989898989898989898969696949494A2A2A29898989898989898989898
          989494949D9D9D8D8D8D0033EE0033EE0033EE002FE61669FF095EFE0400B41B
          1E231B1E23002A783669AD295CA0295B9F245296194085163C844B7EC328549D
          2B5EA22A5CA023509413387B4072B7012B799898989898989898989797979F9F
          9F9D9D9D8F8F8F8787878787878D8D8D9B9B9B98989898989896969692929291
          9191A1A1A19797979898989898989595959090909E9E9E8D8D8D0033EE5DA2FF
          3F87FF2876FF1569FF095EFE0055FE08009D1E2026002C7A2B599F1D478A1B44
          88153B7F0E2C700E2E75487BC026529A1D498D1A438713367A0B286C4274B901
          2D7B989898AAAAAAA5A5A5A2A2A29F9F9F9D9D9D9C9C9C8D8D8D8888888D8D8D
          9898989393939393939191918E8E8E8E8E8EA0A0A09696969494949393939090
          908D8D8D9E9E9E8E8E8E0033EE599FFF4089FF2874FF1568FF095EFE0055FE00
          52FD070081002E7D142669142669477ABF477ABF477ABF477ABF477ABF477ABF
          477ABF477ABF477ABF477ABF4376BB012F7E989898A9A9A9A6A6A6A2A2A29F9F
          9F9D9D9D9C9C9C9B9B9B8B8B8B8E8E8E8D8D8D8D8D8DA0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09F9F9F8E8E8E0033EE5DA2FF
          3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7F3166B45287D1315E
          AA315FAA305EA93361AC477ABF315FAA305DA8305DA9305EA8305DA94578BD01
          3080989898AAAAAAA5A5A5A2A2A29F9F9F9D9D9D9C9C9C9B9B9B8B8B8B8E8E8E
          9B9B9BA3A3A39A9A9A9A9A9A9999999A9A9AA0A0A09A9A9A9999999999999999
          999999999F9F9F8E8E8E0033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08
          009D25282F0031826EA1E880B3F8285B9F285B9F2A5DA03366A84C7FC426529A
          285B9F285B9F285B9F2B5EA2477ABF013283989898AAAAAAA6A6A6A2A2A29F9F
          9F9D9D9D9C9C9C8D8D8D8A8A8A8E8E8EA9A9A9AEAEAE9898989898989898989A
          9A9AA1A1A1969696989898989898989898989898A0A0A08F8F8F0033EE0033EE
          0033EE002CE61569FF095DFE0400B4282A32272A32003384386BAF24579B275A
          9E275A9E275A9E2F60A45487CC2B57A0275A9E275A9E275A9E245599497CC101
          34859898989898989898989696969F9F9F9D9D9D8F8F8F8B8B8B8A8A8A8F8F8F
          9C9C9C979797979797979797979797999999A3A3A39898989797979797979797
          97969696A0A0A08F8F8FFFFFFFFFFFFFFFFFFF002CE61668FF0109CB2560B12A
          2D35292C35003586386BAF24579B26599D26599D25589C2C5BA05E91D62D5BA4
          26599D25589C24579B204F924A7DC2013687FFFFFFFFFFFFFFFFFF9696969F9F
          9F9191919999998B8B8B8B8B8B8F8F8F9C9C9C97979797979797979797979798
          9898A5A5A5999999979797979797979797959595A0A0A08F8F8FFFFFFFFFFFFF
          FFFFFF002CE60018DAFFFFFF2560B12B2F372B2F37003689386BAF2255992558
          9C25589C24569A28569C699CE1325FAA24579B24579B24579B1B478A4C7FC401
          378AFFFFFFFFFFFFFFFFFF969696949494FFFFFF9999998C8C8C8C8C8C8F8F8F
          9C9C9C969696979797979797979797979797A8A8A89A9A9A9797979797979797
          97939393A1A1A1909090FFFFFFFFFFFFFFFFFF002CE6FFFFFFFFFFFF2560B12D
          313A2D313A00388B386BAF21549824579B24579B20509325509773A6EB3563AF
          23569A23569A215397163D804D80C501398CFFFFFFFFFFFFFFFFFF969696FFFF
          FFFFFFFF9999998C8C8C8C8C8C9090909C9C9C96969697979797979795959596
          9696ABABAB9B9B9B969696969696969696919191A1A1A1909090FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF2560B130323C2F323D00398C386BAF2053972356
          99205194163F811C448B7CAFF43868B42255992152961842850C2B6C4E81C701
          3A8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998D8D8D8D8D8D909090
          9C9C9C969696969696959595919191939393ADADAD9C9C9C9696969696969292
          928D8D8DA1A1A1909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B131
          353E30353E003B8E3668AC194A8E18458811367708225E10307882B5FA3C6DBA
          143D7E153C7F1335791131785386CC013C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9999998D8D8D8D8D8D9090909B9B9B9494949393938F8F8F8B8B8B8F
          8F8FAEAEAE9D9D9D9191919191919090908F8F8FA3A3A3919191FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF2560B132373F32373F003C903564AB255197315F
          A73D6DB7487AC8578AD974A7EC7CAFF484B7FC83B6FB7AADF26A9DE25E91D601
          3D91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998E8E8E8E8E8E919191
          9B9B9B9696969999999D9D9DA0A0A0A4A4A4ABABABADADADAFAFAFAFAFAFACAC
          ACA8A8A8A5A5A5919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B134
          3841343841003D916497DC70A3E87BAEF383B6FB88BBFF85B8FD83B6FB83B6FB
          78ACF26398E0497FCA3069B51C57A6013E92FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9999998E8E8E8E8E8E919191A7A7A7AAAAAAADADADAFAFAFB0B0B0AF
          AFAFAFAFAFAFAFAFACACACA7A7A7A1A1A19B9B9B979797919191FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF2560B12560B12560B1003E935388D0437BC53C75
          C1316BB9215DAD124EA10542970341950845990D4A9D134FA21854A71E5AAB23
          5EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999999999999999919191
          A3A3A3A0A0A09E9E9E9C9C9C9898989595959292929292929393939494949595
          95969696989898999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF0443963D6DAE5F87BC83A2CBA9BFDBCBD8EAEDF2F8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF939393ACACACBABABACACACADADADAE9E9E9F8
          F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = btnSairClick
        ExplicitLeft = 600
        ExplicitTop = 1
        ExplicitHeight = 71
      end
    end
    object grdProdutos: TDBGrid
      Left = 0
      Top = 65
      Width = 981
      Height = 466
      Align = alClient
      DataSource = DataSourceProdutos
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object DataSourceProdutos: TDataSource
    DataSet = queryProdutos
    Left = 504
    Top = 16
  end
  object queryProdutos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 408
    Top = 16
    object queryProdutosNCHPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'NCHPRODUTO'
    end
    object queryProdutosTCODIGOBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'TCODIGOBARRAS'
      Size = 30
    end
    object queryProdutosTDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TDESCRICAO'
      Size = 80
    end
    object queryProdutosTUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'TUNIDADE'
      Size = 10
    end
    object queryProdutosNVALORVENDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'NVALORVENDA'
      DisplayFormat = '#,##0.00'
    end
    object queryProdutosNQTDESTOQUE: TFloatField
      DisplayLabel = 'Qtd. Estoque'
      FieldName = 'NQTDESTOQUE'
      DisplayFormat = '#,##0.00'
    end
  end
end
