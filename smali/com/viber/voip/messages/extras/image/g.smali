.class public Lcom/viber/voip/messages/extras/image/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/viber/voip/messages/extras/image/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/extras/image/g;->b:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/messages/extras/image/g;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 4
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 164
    if-lez v1, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 166
    :cond_0
    if-eqz p0, :cond_1

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 171
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 172
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 173
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    if-lez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x26

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x4348

    const/4 v2, 0x0

    .line 197
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v4

    .line 198
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v5

    .line 201
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move v3, v2

    move v6, v2

    .line 202
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;Landroid/net/Uri;IIIIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x2d0

    .line 219
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->g:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;Landroid/net/Uri;IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;IIZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    invoke-static {p0, v0, p1, p2, p3}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;Landroid/net/Uri;IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;IIIIZ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Uri can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v1, "mimeType"

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "outputX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string/jumbo v1, "outputY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const-string/jumbo v1, "landscapeCutting"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    return-object v0
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;IIZ)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Uri can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    .line 239
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;Landroid/net/Uri;IIIIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "Photographs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "Wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    const-string/jumbo v0, "setHomeScreenWallpaper"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 58
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "image/*"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v0, "mimeType"

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 85
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    :goto_1
    return-void

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->b(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x6

    sget-object v1, Lcom/viber/voip/messages/extras/image/g;->b:Ljava/lang/String;

    const-string/jumbo v2, "Failed to find corresponding screen to set a wallpaper"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/extras/image/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 3
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBadDistance: summary height px = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/g;->a(Ljava/lang/String;)V

    .line 193
    return v0
.end method

.method public static b(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 206
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 207
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 208
    aget v0, v0, v3

    .line 210
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 211
    invoke-static {p1, v1, v0, v3}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 116
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 117
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "LockScreen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 123
    :cond_1
    if-nez v1, :cond_3

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 125
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "Wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    const-string/jumbo v0, "setLockScreenWallpaper"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 71
    return-void
.end method

.method public static c(Landroid/app/Activity;)I
    .locals 10
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 280
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 282
    const/high16 v0, 0x4434

    int-to-float v3, v1

    div-float/2addr v0, v3

    .line 283
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_0

    const/high16 v0, 0x3f80

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/app/Activity;)I

    move-result v3

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 286
    const/high16 v5, 0x4218

    invoke-static {v5}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v5

    .line 287
    sub-int v6, v2, v3

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-double v6, v6

    .line 288
    add-int v8, v3, v4

    add-int/2addr v8, v5

    sput v8, Lcom/viber/voip/messages/extras/image/g;->a:I

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "calculateImageHeight: alfa = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", menu = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", statusBar = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", actionBar = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", displayWidth = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " RESULT HEIGHT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/g;->a(Ljava/lang/String;)V

    .line 291
    double-to-int v0, v6

    return v0
.end method
