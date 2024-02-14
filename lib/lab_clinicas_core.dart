library lab_clinicas_core;

export 'src/fp/either.dart';
export 'src/fp/unit.dart';
export 'src/fp/nil.dart';

export 'src/helpers/messages.dart';

export 'src/constants/local_storage_constants.dart';

export 'src/lab_clinicas_core_config.dart';

export 'src/exceptions/auth_exception.dart';
export 'src/exceptions/repository_exception.dart';
export 'src/exceptions/service_exception.dart';

export 'src/theme/lab_clinicas_theme.dart';

export 'src/widgets/lab_clinicas_app_bar.dart';
export 'src/widgets/icon_popup_menu_widget.dart';

// Primeiro ele lê o RestClient normal e depois vai na condicional
// caso a condicional seja True, ele importa o outro RestClient para web
// E como ambos tem o mesmo nome, fica transparente para quem vai usar
export 'src/restClient/rest_client.dart'
  if(dart.library.html) 'src/restClient/rest_client_web.dart';