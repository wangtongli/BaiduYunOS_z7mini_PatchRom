.class public final Landroid/nfc/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageUtils"

.field private static pcbVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, ""

    sput-object v0, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isJDPhone()Z
    .locals 2

    .prologue
    .line 59
    const-string v0, ""

    sget-object v1, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "/sys/bus/spmi/devices/qpnp-ztemt_hw_version/ztemt_hw_sc"

    invoke-static {v0}, Landroid/nfc/PackageUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    .line 62
    :cond_0
    const-string v0, "JD"

    sget-object v1, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageIgnored(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 43
    const-string v0, "cn.nubia.nfctag"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.nfc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.apps.tag"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :cond_0
    const-string v0, ""

    sget-object v1, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "/sys/bus/spmi/devices/qpnp-ztemt_hw_version/ztemt_hw_sc"

    invoke-static {v0}, Landroid/nfc/PackageUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    .line 49
    :cond_1
    const-string v0, "JD"

    sget-object v1, Landroid/nfc/PackageUtils;->pcbVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, "PackageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, br:Ljava/io/BufferedReader;
    const-string v3, "PackageUtils"

    const-string v4, "enter readNodeInfo.........."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    const-string/jumbo v3, "noFile"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    if-eqz v0, :cond_0

    .line 33
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 26
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v3

    .line 32
    if-eqz v1, :cond_2

    .line 33
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    .line 37
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 35
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 36
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 27
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 28
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    const-string v3, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 35
    :catch_3
    move-exception v2

    .line 36
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 32
    :goto_3
    if-eqz v0, :cond_3

    .line 33
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 37
    :cond_3
    :goto_4
    throw v3

    .line 35
    :catch_4
    move-exception v2

    .line 36
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 31
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 27
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method
