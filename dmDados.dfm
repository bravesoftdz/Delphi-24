object dmDesbravador: TdmDesbravador
  OldCreateOrder = False
  Height = 457
  Width = 693
  object DataSource_Desbravador: TDataSource
    DataSet = FDQueryDesbravador
    OnDataChange = DataSource_DesbravadorDataChange
    Left = 62
    Top = 32
  end
  object conDesbravador: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-951TCIP\SQLEXPRESS'
      'User_Name=sa'
      'Password=sql123'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-951TCIP'
      'DATABASE=Sistema_Desbravador'
      'MARS=yes'
      'DriverID=MSSQL')
    Connected = True
    Left = 288
    Top = 32
  end
  object FDQueryDesbravador: TFDQuery
    Connection = conDesbravador
    SQL.Strings = (
      'SELECT * FROM Desbravador')
    Left = 187
    Top = 32
  end
  object DataSource_Unidades: TDataSource
    DataSet = FDQueryUnidades
    OnDataChange = DataSource_UnidadesDataChange
    Left = 54
    Top = 136
  end
  object conUnidades: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-951TCIP\SQLEXPRESS'
      'User_Name=sa'
      'Password=sql123'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-951TCIP'
      'DATABASE=Sistema_Desbravador'
      'MARS=yes'
      'OSAuthent=No'
      'DriverID=MSSQL')
    Connected = True
    Left = 247
    Top = 136
  end
  object FDQueryUnidades: TFDQuery
    Connection = conUnidades
    SQL.Strings = (
      'select * from Unidades')
    Left = 164
    Top = 136
  end
  object DataSource_Classes: TDataSource
    DataSet = FDQueryClasses
    OnDataChange = DataSource_ClassesDataChange
    Left = 62
    Top = 232
  end
  object conClasses: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-951TCIP\SQLEXPRESS'
      'User_Name=sa'
      'Password=sql123'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-951TCIP'
      'DATABASE=Sistema_Desbravador'
      'MARS=yes'
      'OSAuthent=No'
      'DriverID=MSSQL')
    Connected = True
    Left = 236
    Top = 232
  end
  object FDQueryClasses: TFDQuery
    Connection = conClasses
    SQL.Strings = (
      'select * from classes')
    Left = 164
    Top = 232
  end
  object DataSource_Especialidades: TDataSource
    DataSet = FDQueryEspecialidades
    OnDataChange = DataSource_EspecialidadesDataChange
    Left = 62
    Top = 328
  end
  object FDQueryEspecialidades: TFDQuery
    Connection = conEspecialidades
    SQL.Strings = (
      'select * from especialidades')
    Left = 188
    Top = 329
  end
  object conEspecialidades: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-951TCIP\SQLEXPRESS'
      'User_Name=sa'
      'Password=sql123'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-951TCIP'
      'DATABASE=Sistema_Desbravador'
      'MARS=yes'
      'OSAuthent=No'
      'DriverID=MSSQL')
    Connected = True
    Left = 292
    Top = 329
  end
  object FDQueryClube: TFDQuery
    Connection = conClube
    SQL.Strings = (
      'SELECT * FROM Meu_Clube')
    Left = 527
    Top = 33
  end
  object conClube: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-951TCIP\SQLEXPRESS'
      'User_Name=sa'
      'Password=sql123'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-951TCIP'
      'DATABASE=Sistema_Desbravador'
      'MARS=yes'
      'OSAuthent=No'
      'DriverID=MSSQL')
    Left = 612
    Top = 32
  end
  object DataSource_Clube: TDataSource
    DataSet = FDQueryClube
    OnDataChange = DataSource_ClubeDataChange
    Left = 440
    Top = 32
  end
end
