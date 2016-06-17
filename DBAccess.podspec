
Pod::Spec.new do |s|
  s.name             = "DBAccess"
  s.version          = "1.6.13"
  s.summary          = "[DBAccess] is a fully featured and FREE to use ORM for iOS."
  s.description      = <<-DESC
                       [DBAccess] is a fully featured and FREE to use ORM for iOS.

Replace CoreData whilst keeping your existing managed objects, but dump the predicates and long-winded syntax.

Instead use a simple and clean object syntax, with fast and concise inline queries.

DBAccess even has a conversion method to migrate your existing CoreData tables across.

Regularly updated and in constant use within many public applications it thrives on feedback from other developers and is supported by the authors via StackOverflow or directly via email.

It’s mantra is simple, to be fast, simple to implement and the first choice for any developer.

FEATURES

Tables are automatically modelled from your classes for the simplest of upgrade paths, you add a property, it adds the column.  Completely thread-safe in every scenario. Simple, powerful and flexible event model allows you to bind UI updates with anything that is happening to the database and best of all, is the use of standard SQLite syntax for the query conditions. Plus far too much to fit on this page.

WHY SHOULD I USE [DBAccess] ?

An ORM should not be a chore to work with, or require you to change your way of working to compensate for its shortcomings.   With [DBAccess] you simply add it to your project and start using it straight away.

The developer has full control over how the ORM operates, deciding where it puts its files, how queries are performed and on which thread.  Objects can be managed or unmanaged, whilst being members of domains which may share changes or be isolated from them.

If memory is a concern, you can mix and match lightweight objects to preserve system resources when you are expecting large result sets, or retrieve only the properties you need with the remainder being lazily loaded when accessed.

HEADLINE FEATURES

Automatic modelling and upgrading from your class structures.
Amazingly simple FLUENT interface for dealing with the ORM
Event model, for individual objects or tables.  Makes coding apps a breeze
Inline or Async queries
Transaction support
Managed and unmanaged objects supported to be used however you want
Relationships mirror your class structures automatically, and all relationships are automatically indexed
Property level encryption so databases remain human readable whilst securing individual columns.
                       DESC
  s.homepage         = "http://db-access.org"
  s.license          = 'MIT'
  s.author           = { "Adrian Herridge" => "devs@db-access.org" }
  s.source           = { :git => "https://github.com/editfmah/DBAccess.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.preserve_paths = 'DBAccess.framework'
  s.public_header_files = 'DBAccess.framework/**/*.h'
  s.vendored_frameworks = 'DBAccess.framework'
  s.frameworks = 'Foundation','DBAccess'
  s.xcconfig   = { 'FRAMEWORK_SEARCH_PATHS' => '$(SRCROOT)/DBAccess/' }
  
  s.documentation_url = 'http://docs.db-access.org/interface_d_b_access.html'
  s.deprecated = true
  s.deprecated_in_favor_of = 'SharkORM'
    

end
