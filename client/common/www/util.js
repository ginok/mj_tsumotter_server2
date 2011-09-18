function print_r(obj, maxlevel, maxitem) {
  if (!maxlevel)
    maxlevel = 4;
  if (!maxitem)
    maxitem = 150;
  var txt = "";
  var count_obj = 0;
  function _output(str) {
    txt += str + "<br/>";
  }

  function _print_r(obj, name, level) {
    var s = "";
    if (obj == undefined || level > maxlevel)
      return;
    for (var i = 0; i < level; i++) {
      s += " | ";
    }
    s += " - " + name + ":" + typeof(obj) + "=" + obj;
    _output(s);
    if (name == "document" || typeof(obj) != "object")
      return;
    for (var key in obj ) {
      if (count_obj++ > maxitem)
        return;
      _print_r(obj[key], key, level + 1);
    }
  }

  _print_r(obj, "*", 0);
  return txt;
}

function toJSON(obj) {
  var ret;
  // null or undefined
  if(obj == null) {
    return "null";
  }
  // array => [value, value, ...]
  if(obj.constructor === Array) {
    ret = "[";
    var comma = "";
    for(var i in obj) {
      ret += comma + toJSON(obj[i]);
      comma = ",";
    }
    return ret + "]";
  }
  // object => {"key":value, "key":value, ...}
  if(obj.constructor === Object) {
    ret = "{";
    var comma = "";
    for(var i in obj) {
      ret += comma + '"' + i + '": ' + toJSON(obj[i]);
      comma = ",";
    }
    return ret + "}";
  }
  // number => 0
  if(obj.constructor === Number) {
    return "" + obj;
  }
  // boolean => true / false
  if(obj.constructor === Boolean) {
    return obj?"true": "false";
  }
  // string => "string"
  return '"' + obj + '"';
}

/**
  * @param obj Javascriptのオブジェクト
  * @param baseIndent インデントの数
  * @return 整形されたJSON文字列
  */
function prettyPrint(obj, baseIndent) {
        
        var buff = [];
        var addIndent = function(buff, indent) {
                for (i=0; i<indent; i++) {
                        buff.push(' &nbsp');
                }
        }
        var read = function(o, indent) {
                if (typeof(o) == "string" || o instanceof String) {
                        return '"' + o + '"';
                }   else if (typeof(o) == "number" || o instanceof Number) {

                        return o;
                } else if (o instanceof Array) {
                        if (o) {
                                buff.push('[');
                                for (idx in o) {
                                        buff.push(read(o[idx], indent + baseIndent));
                                        buff.push(', ');
                                }
                                if (o.length > 0)
                                        delete buff[buff.length - 1];
                                buff.push(']');
                        }
                } else if (o instanceof Object) {
                        if (o) {
                                buff.push('{<br>\n');
                                for (key in o) {
                                        addIndent(buff, indent + baseIndent);
                                        buff.push('"' + key + '": ');
                                        buff.push(read(o[key], indent + baseIndent));
                                        buff.push(',<br>\n');
                                }
                                delete buff[buff.length - 1];
                                buff.push('<br>\n');
                                addIndent(buff, indent);
                                buff.push('}');
                        }
                }
        }
        read(obj, 0);
        return buff.join('');
}
