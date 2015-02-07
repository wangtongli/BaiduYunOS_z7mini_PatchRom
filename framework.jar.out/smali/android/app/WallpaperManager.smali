.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$BaiduInjector;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXOffset:F

.field private mWallpaperXStep:F

.field private mWallpaperYOffset:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 71
    sput-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 388
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v0, -0x4080

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 73
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 76
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXOffset:F

    .line 77
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYOffset:F

    .line 400
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 402
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/WallpaperManager$Globals;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    return-object v0
.end method

.method private doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "preWallpaper"

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v4

    .line 849
    .local v4, w:I
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    .line 850
    .local v2, h:I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 852
    .local v3, params:Landroid/os/Bundle;
    :try_start_0
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    sget-object v7, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-interface {v6, v7, v3}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 853
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 854
    const-string/jumbo v6, "width"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 855
    const-string v6, "height"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 856
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v4, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 862
    .local v5, wallpaper:Landroid/graphics/Bitmap;
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, v2}, Lnubia/ui/util/BlurUtil;->asyncSaveBlurWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 863
    return-void

    .line 858
    .end local v5           #wallpaper:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "doBlurAndSaveWallpaper : WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doBlurAndSaveWallpaper([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;)V

    .line 845
    return-void
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 1177
    if-nez p1, :cond_1

    move-object p1, v5

    .line 1230
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1181
    .restart local p1
    :cond_1
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1182
    .local v9, wm:Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1183
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1184
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1186
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_0

    .line 1193
    :cond_2
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1194
    .local v5, newbm:Landroid/graphics/Bitmap;
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1196
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1197
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1198
    .local v8, targetRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 1199
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 1201
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 1202
    .local v2, deltaw:I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 1204
    .local v1, deltah:I
    if-gtz v2, :cond_3

    if-lez v1, :cond_4

    .line 1207
    :cond_3
    if-le v2, v1, :cond_5

    .line 1208
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 1212
    .local v7, scale:F
    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 1213
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 1214
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 1215
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 1218
    .end local v7           #scale:F
    :cond_4
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 1220
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1221
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1222
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1223
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1226
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    .line 1227
    goto/16 :goto_0

    .line 1210
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_5
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v11, v11

    div-float v7, v10, v11

    .restart local v7       #scale:F
    goto :goto_1

    .line 1228
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltah:I
    .end local v2           #deltaw:I
    .end local v5           #newbm:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    .end local v8           #targetRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 1229
    .local v3, e:Ljava/lang/OutOfMemoryError;
    sget-object v10, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 408
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .parameter "inWidth"
    .parameter "inHeight"
    .parameter "outWidth"
    .parameter "outHeight"
    .parameter "horizontalAlignment"
    .parameter "verticalAlignment"

    .prologue
    const/4 v6, 0x0

    .line 603
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 605
    .local v1, cropRect:Landroid/graphics/RectF;
    int-to-float v3, p0

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 606
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 607
    int-to-float v3, p1

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 608
    int-to-float v3, p2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 609
    .local v2, cropWidth:F
    int-to-float v3, p0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 610
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 618
    .end local v2           #cropWidth:F
    :goto_0
    return-object v1

    .line 612
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 613
    int-to-float v3, p0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 614
    int-to-float v3, p3

    int-to-float v4, p0

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float v0, v3, v4

    .line 615
    .local v0, cropHeight:F
    int-to-float v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v3, p5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 616
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1162
    .local v1, screenWidth:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1163
    .local v0, screenHeight:I
    if-ge v0, v1, :cond_0

    .line 1164
    move v2, v0

    .line 1165
    .local v2, t:I
    move v0, v1

    .line 1166
    move v1, v2

    .line 1169
    .end local v2           #t:I
    :cond_0
    const/16 v3, 0x780

    if-lt v0, v3, :cond_1

    .line 1170
    const-string v3, "/system/media/wallpaper/1920/wallpaper_01.jpg"

    .line 1172
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "/system/media/wallpaper/default/wallpaper_01.jpg"

    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 392
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 396
    :cond_0
    monitor-exit v1

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    const v2, 0x8000

    new-array v1, v2, [B

    .line 912
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_0

    .line 913
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 915
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_0
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, e:Ljava/lang/Exception;
    const v1, #android:drawable@default_wallpaper#t

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->setResource(I)V

    goto :goto_0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .parameter "windowToken"

    .prologue
    .line 1134
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x4080

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    return-void

    .line 1136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 692
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 693
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 682
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 441
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 29
    .parameter "outWidth"
    .parameter "outHeight"
    .parameter "scaleToFit"
    .parameter "horizontalAlignment"
    .parameter "verticalAlignment"

    .prologue
    .line 459
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 460
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v5, 0x0

    .line 596
    :goto_0
    return-object v5

    .line 463
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 464
    .local v22, resources:Landroid/content/res/Resources;
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move/from16 v0, p4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 465
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 467
    const/16 v17, 0x0

    .line 469
    .local v17, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    .end local v17           #is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .restart local v17       #is:Ljava/io/InputStream;
    :goto_1
    if-nez v17, :cond_1

    .line 476
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper input stream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v5, 0x0

    goto :goto_0

    .line 470
    .end local v17           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .line 471
    .local v15, e:Ljava/lang/Exception;
    new-instance v17, Ljava/io/BufferedInputStream;

    const v5, #android:drawable@default_wallpaper#t

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v17       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 479
    .end local v15           #e:Ljava/lang/Exception;
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 480
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 481
    .local v16, fullSize:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 486
    .end local v16           #fullSize:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    .local v20, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 488
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 489
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v5, :cond_5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_5

    .line 490
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 491
    .local v3, inWidth:I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 499
    .local v4, inHeight:I
    :try_start_1
    new-instance v17, Ljava/io/FileInputStream;

    .end local v17           #is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    .restart local v17       #is:Ljava/io/InputStream;
    :goto_2
    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 508
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 509
    if-eqz p3, :cond_6

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 510
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 519
    .local v13, cropRectF:Landroid/graphics/RectF;
    :goto_3
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 520
    .local v25, roundedTrueCrop:Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 522
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_7

    .line 523
    :cond_4
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 493
    .end local v3           #inWidth:I
    .end local v4           #inHeight:I
    .end local v13           #cropRectF:Landroid/graphics/RectF;
    .end local v25           #roundedTrueCrop:Landroid/graphics/Rect;
    :cond_5
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper dimensions are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 500
    .end local v17           #is:Ljava/io/InputStream;
    .restart local v3       #inWidth:I
    .restart local v4       #inHeight:I
    :catch_1
    move-exception v15

    .line 501
    .restart local v15       #e:Ljava/lang/Exception;
    new-instance v17, Ljava/io/BufferedInputStream;

    const v5, #android:drawable@default_wallpaper#t

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v17       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 513
    .end local v15           #e:Ljava/lang/Exception;
    :cond_6
    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v18, v5, p4

    .line 514
    .local v18, left:F
    move/from16 v0, p1

    int-to-float v5, v0

    add-float v24, v18, v5

    .line 515
    .local v24, right:F
    sub-int v5, v4, p2

    int-to-float v5, v5

    mul-float v28, v5, p5

    .line 516
    .local v28, top:F
    move/from16 v0, p2

    int-to-float v5, v0

    add-float v9, v28, v5

    .line 517
    .local v9, bottom:F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v13       #cropRectF:Landroid/graphics/RectF;
    goto :goto_3

    .line 528
    .end local v9           #bottom:F
    .end local v18           #left:F
    .end local v24           #right:F
    .end local v28           #top:F
    .restart local v25       #roundedTrueCrop:Landroid/graphics/Rect;
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v5, v5, p1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int v6, v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 532
    .local v26, scaleDownSampleSize:I
    const/4 v14, 0x0

    .line 534
    .local v14, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    .line 539
    :goto_4
    const/4 v11, 0x0

    .line 540
    .local v11, crop:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_9

    .line 542
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 543
    .restart local v20       #options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_8

    .line 544
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 546
    :cond_8
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 547
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 550
    :cond_9
    if-nez v11, :cond_c

    .line 553
    :try_start_3
    new-instance v17, Ljava/io/FileInputStream;

    .end local v17           #is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 558
    .restart local v17       #is:Ljava/io/InputStream;
    :goto_5
    const/16 v16, 0x0

    .line 559
    .restart local v16       #fullSize:Landroid/graphics/Bitmap;
    if-eqz v17, :cond_b

    .line 560
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 561
    .restart local v20       #options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_a

    .line 562
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 564
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 566
    :cond_b
    if-eqz v16, :cond_c

    .line 567
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 573
    .end local v16           #fullSize:Landroid/graphics/Bitmap;
    :cond_c
    if-nez v11, :cond_d

    .line 574
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot decode default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 535
    .end local v11           #crop:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v15

    .line 536
    .local v15, e:Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 554
    .end local v15           #e:Ljava/io/IOException;
    .end local v17           #is:Ljava/io/InputStream;
    .restart local v11       #crop:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v15

    .line 555
    .local v15, e:Ljava/lang/Exception;
    new-instance v17, Ljava/io/BufferedInputStream;

    const v5, #android:drawable@default_wallpaper#t

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v17       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 579
    .end local v15           #e:Ljava/lang/Exception;
    :cond_d
    if-lez p1, :cond_f

    if-lez p2, :cond_f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_e

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    if-eq v5, v0, :cond_f

    .line 581
    :cond_e
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 582
    .local v19, m:Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 583
    .local v12, cropRect:Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 584
    .local v23, returnRect:Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 585
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 587
    .local v27, tmp:Landroid/graphics/Bitmap;
    if-eqz v27, :cond_f

    .line 588
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 589
    .local v10, c:Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 590
    .local v21, p:Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 591
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 592
    move-object/from16 v11, v27

    .line 596
    .end local v10           #c:Landroid/graphics/Canvas;
    .end local v12           #cropRect:Landroid/graphics/RectF;
    .end local v19           #m:Landroid/graphics/Matrix;
    .end local v21           #p:Landroid/graphics/Paint;
    .end local v23           #returnRect:Landroid/graphics/RectF;
    .end local v27           #tmp:Landroid/graphics/Bitmap;
    :cond_f
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .parameter "imageUri"

    .prologue
    const/4 v7, 0x0

    .line 727
    const-string v5, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 728
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Image URI must be of the content scheme type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 732
    :cond_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 733
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 735
    .local v0, cropAndSetWallpaperIntent:Landroid/content/Intent;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 738
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 739
    .local v2, homeIntent:Landroid/content/Intent;
    const/high16 v5, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 741
    .local v4, resolvedHome:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    .line 742
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 746
    .local v1, cropAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 756
    :cond_1
    return-object v0

    .line 752
    .end local v1           #cropAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string v5, "com.android.wallpapercropper"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 755
    .restart local v1       #cropAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 760
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 978
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 979
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    return v1

    .line 983
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 951
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 952
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    return v1

    .line 956
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 959
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 427
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 428
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 429
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 430
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 433
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 654
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 656
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 658
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 702
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 703
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_0
    return-object v1

    .line 706
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getWallpaperXOffset()F
    .locals 1

    .prologue
    .line 1071
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowSession;->getWallpaperPositionX()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1075
    :goto_0
    return v0

    .line 1072
    :catch_0
    move-exception v0

    .line 1075
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWallpaperYOffset()F
    .locals 1

    .prologue
    .line 1088
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowSession;->getWallpaperPositionY()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1092
    :goto_0
    return v0

    .line 1089
    :catch_0
    move-exception v0

    .line 1092
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .parameter "resid"

    .prologue
    const/4 v3, 0x0

    .line 923
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 924
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_0
    return v3

    .line 928
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 929
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, name:Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 931
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 631
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 632
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 633
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 634
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 637
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 669
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 670
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 671
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 673
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 1114
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 819
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 824
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 827
    const/4 v1, 0x0

    .line 829
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 833
    if-eqz v2, :cond_0

    .line 834
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_0

    .line 837
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 833
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 834
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 833
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResource(I)V
    .locals 7
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 780
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 786
    .local v3, resources:Landroid/content/res/Resources;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 788
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 789
    const/4 v1, 0x0

    .line 791
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 794
    if-eqz v2, :cond_0

    .line 795
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_0

    .line 799
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 794
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 795
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 794
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 886
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 891
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 894
    const/4 v1, 0x0

    .line 896
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 899
    if-eqz v2, :cond_0

    .line 900
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_0

    .line 903
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 899
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 900
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 899
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 1054
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 1055
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1056
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    #calls: Landroid/app/WallpaperManager$BaiduInjector;->setWallpaperOffsets(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z
    invoke-static/range {p0 .. p3}, Landroid/app/WallpaperManager$BaiduInjector;->access$invoke-setWallpaperOffsets-aa0944(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z

    move-result v0

    if-eqz v0, :cond_baidu_0

    goto :goto_baidu_0

    :cond_baidu_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :goto_baidu_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 2
    .parameter "minimumWidth"
    .parameter "minimumHeight"

    .prologue
    .line 1037
    .line 1011
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1012
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :goto_0
    return-void

    .line 1014
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$iget-mContext-8e44b4(Landroid/app/WallpaperManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$iget-mWallpaperXStep-2e2e4d(Landroid/app/WallpaperManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    return v0
.end method

.method static synthetic access$iget-mWallpaperYStep-3eebf1(Landroid/app/WallpaperManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    return v0
.end method
