﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Modelo
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="bd_proyectLotus")]
	public partial class bd_newLotusDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Definiciones de métodos de extensibilidad
    partial void OnCreated();
    partial void InsertTbl_Usuario(Tbl_Usuario instance);
    partial void UpdateTbl_Usuario(Tbl_Usuario instance);
    partial void DeleteTbl_Usuario(Tbl_Usuario instance);
    partial void InsertTbl_Capasidad(Tbl_Capasidad instance);
    partial void UpdateTbl_Capasidad(Tbl_Capasidad instance);
    partial void DeleteTbl_Capasidad(Tbl_Capasidad instance);
    partial void InsertTbl_grado(Tbl_grado instance);
    partial void UpdateTbl_grado(Tbl_grado instance);
    partial void DeleteTbl_grado(Tbl_grado instance);
    partial void InsertTbl_seccion(Tbl_seccion instance);
    partial void UpdateTbl_seccion(Tbl_seccion instance);
    partial void DeleteTbl_seccion(Tbl_seccion instance);
    partial void InsertTbl_TipoUsuario(Tbl_TipoUsuario instance);
    partial void UpdateTbl_TipoUsuario(Tbl_TipoUsuario instance);
    partial void DeleteTbl_TipoUsuario(Tbl_TipoUsuario instance);
    #endregion
		
		public bd_newLotusDataContext() : 
				base(global::Modelo.Properties.Settings.Default.bd_proyectLotusConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public bd_newLotusDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public bd_newLotusDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public bd_newLotusDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public bd_newLotusDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Tbl_Usuario> Tbl_Usuario
		{
			get
			{
				return this.GetTable<Tbl_Usuario>();
			}
		}
		
		public System.Data.Linq.Table<Tbl_Capasidad> Tbl_Capasidad
		{
			get
			{
				return this.GetTable<Tbl_Capasidad>();
			}
		}
		
		public System.Data.Linq.Table<Tbl_grado> Tbl_grado
		{
			get
			{
				return this.GetTable<Tbl_grado>();
			}
		}
		
		public System.Data.Linq.Table<Tbl_Matricula> Tbl_Matricula
		{
			get
			{
				return this.GetTable<Tbl_Matricula>();
			}
		}
		
		public System.Data.Linq.Table<Tbl_seccion> Tbl_seccion
		{
			get
			{
				return this.GetTable<Tbl_seccion>();
			}
		}
		
		public System.Data.Linq.Table<Tbl_TipoUsuario> Tbl_TipoUsuario
		{
			get
			{
				return this.GetTable<Tbl_TipoUsuario>();
			}
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.ComprobacionDeInicioSesion")]
		public ISingleResult<ComprobacionDeInicioSesionResult> ComprobacionDeInicioSesion([global::System.Data.Linq.Mapping.ParameterAttribute(Name="Usuario", DbType="VarChar(50)")] string usuario, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Contrasena", DbType="VarChar(50)")] string contrasena)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), usuario, contrasena);
			return ((ISingleResult<ComprobacionDeInicioSesionResult>)(result.ReturnValue));
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tbl_Usuario")]
	public partial class Tbl_Usuario : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID_usuario;
		
		private int _ID_TipoUsuario;
		
		private int _ID_Capasidad;
		
		private string _Usuario;
		
		private string _NombreUsuario;
		
		private string _Apellido;
		
		private int _EdadUsuario;
		
		private bool _Linea;
		
		private string _Contraseña;
		
		private EntityRef<Tbl_Capasidad> _Tbl_Capasidad;
		
		private EntityRef<Tbl_TipoUsuario> _Tbl_TipoUsuario;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnID_usuarioChanging(int value);
    partial void OnID_usuarioChanged();
    partial void OnID_TipoUsuarioChanging(int value);
    partial void OnID_TipoUsuarioChanged();
    partial void OnID_CapasidadChanging(int value);
    partial void OnID_CapasidadChanged();
    partial void OnUsuarioChanging(string value);
    partial void OnUsuarioChanged();
    partial void OnNombreUsuarioChanging(string value);
    partial void OnNombreUsuarioChanged();
    partial void OnApellidoChanging(string value);
    partial void OnApellidoChanged();
    partial void OnEdadUsuarioChanging(int value);
    partial void OnEdadUsuarioChanged();
    partial void OnLineaChanging(bool value);
    partial void OnLineaChanged();
    partial void OnContraseñaChanging(string value);
    partial void OnContraseñaChanged();
    #endregion
		
		public Tbl_Usuario()
		{
			this._Tbl_Capasidad = default(EntityRef<Tbl_Capasidad>);
			this._Tbl_TipoUsuario = default(EntityRef<Tbl_TipoUsuario>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_usuario", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID_usuario
		{
			get
			{
				return this._ID_usuario;
			}
			set
			{
				if ((this._ID_usuario != value))
				{
					this.OnID_usuarioChanging(value);
					this.SendPropertyChanging();
					this._ID_usuario = value;
					this.SendPropertyChanged("ID_usuario");
					this.OnID_usuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_TipoUsuario", DbType="Int NOT NULL")]
		public int ID_TipoUsuario
		{
			get
			{
				return this._ID_TipoUsuario;
			}
			set
			{
				if ((this._ID_TipoUsuario != value))
				{
					if (this._Tbl_TipoUsuario.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnID_TipoUsuarioChanging(value);
					this.SendPropertyChanging();
					this._ID_TipoUsuario = value;
					this.SendPropertyChanged("ID_TipoUsuario");
					this.OnID_TipoUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_Capasidad", DbType="Int NOT NULL")]
		public int ID_Capasidad
		{
			get
			{
				return this._ID_Capasidad;
			}
			set
			{
				if ((this._ID_Capasidad != value))
				{
					if (this._Tbl_Capasidad.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnID_CapasidadChanging(value);
					this.SendPropertyChanging();
					this._ID_Capasidad = value;
					this.SendPropertyChanged("ID_Capasidad");
					this.OnID_CapasidadChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Usuario", DbType="VarChar(90) NOT NULL", CanBeNull=false)]
		public string Usuario
		{
			get
			{
				return this._Usuario;
			}
			set
			{
				if ((this._Usuario != value))
				{
					this.OnUsuarioChanging(value);
					this.SendPropertyChanging();
					this._Usuario = value;
					this.SendPropertyChanged("Usuario");
					this.OnUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NombreUsuario", DbType="VarChar(90) NOT NULL", CanBeNull=false)]
		public string NombreUsuario
		{
			get
			{
				return this._NombreUsuario;
			}
			set
			{
				if ((this._NombreUsuario != value))
				{
					this.OnNombreUsuarioChanging(value);
					this.SendPropertyChanging();
					this._NombreUsuario = value;
					this.SendPropertyChanged("NombreUsuario");
					this.OnNombreUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Apellido", DbType="VarChar(90) NOT NULL", CanBeNull=false)]
		public string Apellido
		{
			get
			{
				return this._Apellido;
			}
			set
			{
				if ((this._Apellido != value))
				{
					this.OnApellidoChanging(value);
					this.SendPropertyChanging();
					this._Apellido = value;
					this.SendPropertyChanged("Apellido");
					this.OnApellidoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EdadUsuario", DbType="Int NOT NULL")]
		public int EdadUsuario
		{
			get
			{
				return this._EdadUsuario;
			}
			set
			{
				if ((this._EdadUsuario != value))
				{
					this.OnEdadUsuarioChanging(value);
					this.SendPropertyChanging();
					this._EdadUsuario = value;
					this.SendPropertyChanged("EdadUsuario");
					this.OnEdadUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Linea", DbType="Bit NOT NULL")]
		public bool Linea
		{
			get
			{
				return this._Linea;
			}
			set
			{
				if ((this._Linea != value))
				{
					this.OnLineaChanging(value);
					this.SendPropertyChanging();
					this._Linea = value;
					this.SendPropertyChanged("Linea");
					this.OnLineaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Contraseña", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string Contraseña
		{
			get
			{
				return this._Contraseña;
			}
			set
			{
				if ((this._Contraseña != value))
				{
					this.OnContraseñaChanging(value);
					this.SendPropertyChanging();
					this._Contraseña = value;
					this.SendPropertyChanged("Contraseña");
					this.OnContraseñaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tbl_Capasidad_Tbl_Usuario", Storage="_Tbl_Capasidad", ThisKey="ID_Capasidad", OtherKey="ID_Capasidad", IsForeignKey=true, DeleteOnNull=true, DeleteRule="CASCADE")]
		public Tbl_Capasidad Tbl_Capasidad
		{
			get
			{
				return this._Tbl_Capasidad.Entity;
			}
			set
			{
				Tbl_Capasidad previousValue = this._Tbl_Capasidad.Entity;
				if (((previousValue != value) 
							|| (this._Tbl_Capasidad.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Tbl_Capasidad.Entity = null;
						previousValue.Tbl_Usuario.Remove(this);
					}
					this._Tbl_Capasidad.Entity = value;
					if ((value != null))
					{
						value.Tbl_Usuario.Add(this);
						this._ID_Capasidad = value.ID_Capasidad;
					}
					else
					{
						this._ID_Capasidad = default(int);
					}
					this.SendPropertyChanged("Tbl_Capasidad");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tbl_TipoUsuario_Tbl_Usuario", Storage="_Tbl_TipoUsuario", ThisKey="ID_TipoUsuario", OtherKey="ID_TipoUsuario", IsForeignKey=true, DeleteOnNull=true, DeleteRule="CASCADE")]
		public Tbl_TipoUsuario Tbl_TipoUsuario
		{
			get
			{
				return this._Tbl_TipoUsuario.Entity;
			}
			set
			{
				Tbl_TipoUsuario previousValue = this._Tbl_TipoUsuario.Entity;
				if (((previousValue != value) 
							|| (this._Tbl_TipoUsuario.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Tbl_TipoUsuario.Entity = null;
						previousValue.Tbl_Usuario.Remove(this);
					}
					this._Tbl_TipoUsuario.Entity = value;
					if ((value != null))
					{
						value.Tbl_Usuario.Add(this);
						this._ID_TipoUsuario = value.ID_TipoUsuario;
					}
					else
					{
						this._ID_TipoUsuario = default(int);
					}
					this.SendPropertyChanged("Tbl_TipoUsuario");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tbl_Capasidad")]
	public partial class Tbl_Capasidad : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID_Capasidad;
		
		private string _Nombre_Capasidad;
		
		private EntitySet<Tbl_Usuario> _Tbl_Usuario;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnID_CapasidadChanging(int value);
    partial void OnID_CapasidadChanged();
    partial void OnNombre_CapasidadChanging(string value);
    partial void OnNombre_CapasidadChanged();
    #endregion
		
		public Tbl_Capasidad()
		{
			this._Tbl_Usuario = new EntitySet<Tbl_Usuario>(new Action<Tbl_Usuario>(this.attach_Tbl_Usuario), new Action<Tbl_Usuario>(this.detach_Tbl_Usuario));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_Capasidad", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID_Capasidad
		{
			get
			{
				return this._ID_Capasidad;
			}
			set
			{
				if ((this._ID_Capasidad != value))
				{
					this.OnID_CapasidadChanging(value);
					this.SendPropertyChanging();
					this._ID_Capasidad = value;
					this.SendPropertyChanged("ID_Capasidad");
					this.OnID_CapasidadChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Nombre_Capasidad", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string Nombre_Capasidad
		{
			get
			{
				return this._Nombre_Capasidad;
			}
			set
			{
				if ((this._Nombre_Capasidad != value))
				{
					this.OnNombre_CapasidadChanging(value);
					this.SendPropertyChanging();
					this._Nombre_Capasidad = value;
					this.SendPropertyChanged("Nombre_Capasidad");
					this.OnNombre_CapasidadChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tbl_Capasidad_Tbl_Usuario", Storage="_Tbl_Usuario", ThisKey="ID_Capasidad", OtherKey="ID_Capasidad")]
		public EntitySet<Tbl_Usuario> Tbl_Usuario
		{
			get
			{
				return this._Tbl_Usuario;
			}
			set
			{
				this._Tbl_Usuario.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Tbl_Usuario(Tbl_Usuario entity)
		{
			this.SendPropertyChanging();
			entity.Tbl_Capasidad = this;
		}
		
		private void detach_Tbl_Usuario(Tbl_Usuario entity)
		{
			this.SendPropertyChanging();
			entity.Tbl_Capasidad = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tbl_grado")]
	public partial class Tbl_grado : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID_grado;
		
		private string _NombreGrado;
		
		private EntitySet<Tbl_seccion> _Tbl_seccion;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnID_gradoChanging(int value);
    partial void OnID_gradoChanged();
    partial void OnNombreGradoChanging(string value);
    partial void OnNombreGradoChanged();
    #endregion
		
		public Tbl_grado()
		{
			this._Tbl_seccion = new EntitySet<Tbl_seccion>(new Action<Tbl_seccion>(this.attach_Tbl_seccion), new Action<Tbl_seccion>(this.detach_Tbl_seccion));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_grado", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID_grado
		{
			get
			{
				return this._ID_grado;
			}
			set
			{
				if ((this._ID_grado != value))
				{
					this.OnID_gradoChanging(value);
					this.SendPropertyChanging();
					this._ID_grado = value;
					this.SendPropertyChanged("ID_grado");
					this.OnID_gradoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NombreGrado", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string NombreGrado
		{
			get
			{
				return this._NombreGrado;
			}
			set
			{
				if ((this._NombreGrado != value))
				{
					this.OnNombreGradoChanging(value);
					this.SendPropertyChanging();
					this._NombreGrado = value;
					this.SendPropertyChanged("NombreGrado");
					this.OnNombreGradoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tbl_grado_Tbl_seccion", Storage="_Tbl_seccion", ThisKey="ID_grado", OtherKey="ID_grado")]
		public EntitySet<Tbl_seccion> Tbl_seccion
		{
			get
			{
				return this._Tbl_seccion;
			}
			set
			{
				this._Tbl_seccion.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Tbl_seccion(Tbl_seccion entity)
		{
			this.SendPropertyChanging();
			entity.Tbl_grado = this;
		}
		
		private void detach_Tbl_seccion(Tbl_seccion entity)
		{
			this.SendPropertyChanging();
			entity.Tbl_grado = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tbl_Matricula")]
	public partial class Tbl_Matricula
	{
		
		private int _ID_usuario;
		
		private int _ID_grado;
		
		public Tbl_Matricula()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_usuario", DbType="Int NOT NULL")]
		public int ID_usuario
		{
			get
			{
				return this._ID_usuario;
			}
			set
			{
				if ((this._ID_usuario != value))
				{
					this._ID_usuario = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_grado", DbType="Int NOT NULL")]
		public int ID_grado
		{
			get
			{
				return this._ID_grado;
			}
			set
			{
				if ((this._ID_grado != value))
				{
					this._ID_grado = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tbl_seccion")]
	public partial class Tbl_seccion : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID_seccion;
		
		private int _ID_grado;
		
		private string _nombreDeSeccion;
		
		private EntityRef<Tbl_grado> _Tbl_grado;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnID_seccionChanging(int value);
    partial void OnID_seccionChanged();
    partial void OnID_gradoChanging(int value);
    partial void OnID_gradoChanged();
    partial void OnnombreDeSeccionChanging(string value);
    partial void OnnombreDeSeccionChanged();
    #endregion
		
		public Tbl_seccion()
		{
			this._Tbl_grado = default(EntityRef<Tbl_grado>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_seccion", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID_seccion
		{
			get
			{
				return this._ID_seccion;
			}
			set
			{
				if ((this._ID_seccion != value))
				{
					this.OnID_seccionChanging(value);
					this.SendPropertyChanging();
					this._ID_seccion = value;
					this.SendPropertyChanged("ID_seccion");
					this.OnID_seccionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_grado", DbType="Int NOT NULL")]
		public int ID_grado
		{
			get
			{
				return this._ID_grado;
			}
			set
			{
				if ((this._ID_grado != value))
				{
					if (this._Tbl_grado.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnID_gradoChanging(value);
					this.SendPropertyChanging();
					this._ID_grado = value;
					this.SendPropertyChanged("ID_grado");
					this.OnID_gradoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nombreDeSeccion", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string nombreDeSeccion
		{
			get
			{
				return this._nombreDeSeccion;
			}
			set
			{
				if ((this._nombreDeSeccion != value))
				{
					this.OnnombreDeSeccionChanging(value);
					this.SendPropertyChanging();
					this._nombreDeSeccion = value;
					this.SendPropertyChanged("nombreDeSeccion");
					this.OnnombreDeSeccionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tbl_grado_Tbl_seccion", Storage="_Tbl_grado", ThisKey="ID_grado", OtherKey="ID_grado", IsForeignKey=true, DeleteOnNull=true, DeleteRule="CASCADE")]
		public Tbl_grado Tbl_grado
		{
			get
			{
				return this._Tbl_grado.Entity;
			}
			set
			{
				Tbl_grado previousValue = this._Tbl_grado.Entity;
				if (((previousValue != value) 
							|| (this._Tbl_grado.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Tbl_grado.Entity = null;
						previousValue.Tbl_seccion.Remove(this);
					}
					this._Tbl_grado.Entity = value;
					if ((value != null))
					{
						value.Tbl_seccion.Add(this);
						this._ID_grado = value.ID_grado;
					}
					else
					{
						this._ID_grado = default(int);
					}
					this.SendPropertyChanged("Tbl_grado");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tbl_TipoUsuario")]
	public partial class Tbl_TipoUsuario : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID_TipoUsuario;
		
		private string _NombretipoUsuario;
		
		private EntitySet<Tbl_Usuario> _Tbl_Usuario;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnID_TipoUsuarioChanging(int value);
    partial void OnID_TipoUsuarioChanged();
    partial void OnNombretipoUsuarioChanging(string value);
    partial void OnNombretipoUsuarioChanged();
    #endregion
		
		public Tbl_TipoUsuario()
		{
			this._Tbl_Usuario = new EntitySet<Tbl_Usuario>(new Action<Tbl_Usuario>(this.attach_Tbl_Usuario), new Action<Tbl_Usuario>(this.detach_Tbl_Usuario));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID_TipoUsuario", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID_TipoUsuario
		{
			get
			{
				return this._ID_TipoUsuario;
			}
			set
			{
				if ((this._ID_TipoUsuario != value))
				{
					this.OnID_TipoUsuarioChanging(value);
					this.SendPropertyChanging();
					this._ID_TipoUsuario = value;
					this.SendPropertyChanged("ID_TipoUsuario");
					this.OnID_TipoUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NombretipoUsuario", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string NombretipoUsuario
		{
			get
			{
				return this._NombretipoUsuario;
			}
			set
			{
				if ((this._NombretipoUsuario != value))
				{
					this.OnNombretipoUsuarioChanging(value);
					this.SendPropertyChanging();
					this._NombretipoUsuario = value;
					this.SendPropertyChanged("NombretipoUsuario");
					this.OnNombretipoUsuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Tbl_TipoUsuario_Tbl_Usuario", Storage="_Tbl_Usuario", ThisKey="ID_TipoUsuario", OtherKey="ID_TipoUsuario")]
		public EntitySet<Tbl_Usuario> Tbl_Usuario
		{
			get
			{
				return this._Tbl_Usuario;
			}
			set
			{
				this._Tbl_Usuario.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Tbl_Usuario(Tbl_Usuario entity)
		{
			this.SendPropertyChanging();
			entity.Tbl_TipoUsuario = this;
		}
		
		private void detach_Tbl_Usuario(Tbl_Usuario entity)
		{
			this.SendPropertyChanging();
			entity.Tbl_TipoUsuario = null;
		}
	}
	
	public partial class ComprobacionDeInicioSesionResult
	{
		
		private System.Nullable<bool> _ExisteU;
		
		public ComprobacionDeInicioSesionResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ExisteU", DbType="Bit")]
		public System.Nullable<bool> ExisteU
		{
			get
			{
				return this._ExisteU;
			}
			set
			{
				if ((this._ExisteU != value))
				{
					this._ExisteU = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
