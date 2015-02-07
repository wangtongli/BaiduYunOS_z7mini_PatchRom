.class public Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;
.super Ljava/lang/Object;
.source "ExtSmartScreenLoader.java"


# static fields
.field private static final ANDORID_CLASSLOADER:Ljava/lang/String; = "android.app.ApplicationLoaders"

.field private static final DEFAULT_LOCKSCREEN_PKG:Ljava/lang/String; = "cn.nubia.smartface"

.field private static final GET_SMARTSCREEN:Ljava/lang/String; = "getSmartScreen"

.field private static final METHOD_GETCLASSLOADER:Ljava/lang/String; = "getClassLoader"

.field private static final METHOD_GETDEFAULT:Ljava/lang/String; = "getDefault"

.field private static final SMARTSCREEN_ENTRY:Ljava/lang/String; = "android.smartscreen.ENTRY"

.field private static classLoaded:Z

.field private static sExtContext:Landroid/content/Context;

.field private static sLoadedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->classLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createExtSmartScreen(Landroid/content/Context;)Lcom/android/internal/policy/impl/ExtSmartScreen;
    .locals 9
    .parameter "extContext"

    .prologue
    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, smartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;
    sget-object v4, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->sLoadedClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    sget-object v4, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->sLoadedClass:Ljava/lang/Class;

    const-string v5, "getSmartScreen"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 96
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/policy/impl/ExtSmartScreen;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getEncapsulatedClassLoader(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 12
    .parameter "srcPath"
    .parameter "dataDir"
    .parameter "context"

    .prologue
    .line 69
    const/4 v7, 0x0

    .line 71
    .local v7, wrappedLoader:Ljava/lang/ClassLoader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, file:Ljava/io/File;
    const-string v8, "android.app.ApplicationLoaders"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 73
    .local v6, loader:Ljava/lang/Class;
    const-string v8, "getDefault"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 75
    .local v5, getDefault:Ljava/lang/reflect/Method;
    const-string v8, "getClassLoader"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/ClassLoader;

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 78
    .local v4, getClassLoader:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, appLoadersObj:Ljava/lang/Object;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1           #appLoadersObj:Ljava/lang/Object;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #getClassLoader:Ljava/lang/reflect/Method;
    .end local v5           #getDefault:Ljava/lang/reflect/Method;
    .end local v6           #loader:Ljava/lang/Class;
    :goto_0
    return-object v7

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSmartScreen(Landroid/content/Context;)Lcom/android/internal/policy/impl/ExtSmartScreen;
    .locals 10
    .parameter "context"

    .prologue
    .line 27
    const/4 v4, 0x0

    .line 28
    .local v4, extLockScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 30
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "cn.nubia.smartface"

    const/16 v9, 0x80

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 32
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 33
    iget-object v0, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 34
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 35
    const-string v8, "android.smartscreen.ENTRY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, entry:Ljava/lang/String;
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 37
    .local v7, srcPath:Ljava/lang/String;
    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 38
    .local v1, dataDir:Ljava/lang/String;
    const-string v8, "cn.nubia.smartface"

    invoke-static {p0, v8, v3, v7, v1}, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->loadSmartScreenClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #dataDir:Ljava/lang/String;
    .end local v3           #entry:Ljava/lang/String;
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    .end local v7           #srcPath:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v8, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->classLoaded:Z

    if-eqz v8, :cond_1

    .line 47
    sget-object v8, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->sExtContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->createExtSmartScreen(Landroid/content/Context;)Lcom/android/internal/policy/impl/ExtSmartScreen;

    move-result-object v4

    .line 49
    :cond_1
    return-object v4

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->classLoaded:Z

    goto :goto_0
.end method

.method private static getWidgetPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, newContext:Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadSmartScreenClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pkgName"
    .parameter "entry"
    .parameter "srcPath"
    .parameter "dataDir"

    .prologue
    .line 55
    :try_start_0
    invoke-static {p3, p4, p0}, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->getEncapsulatedClassLoader(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 57
    .local v1, extClassLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->sLoadedClass:Ljava/lang/Class;

    .line 58
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->getWidgetPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->sExtContext:Landroid/content/Context;

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->classLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #extClassLoader:Ljava/lang/ClassLoader;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->classLoaded:Z

    goto :goto_0
.end method
