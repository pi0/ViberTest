.class public Lcom/viber/voip/settings/PreferencesContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:I

.field private static final f:Landroid/net/Uri;

.field private static g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/viber/voip/settings/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/settings/PreferencesContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->b:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/settings/PreferencesContentProvider;->c:I

    .line 79
    const/4 v0, 0x1

    sput v0, Lcom/viber/voip/settings/PreferencesContentProvider;->d:I

    .line 80
    const/4 v0, 0x2

    sput v0, Lcom/viber/voip/settings/PreferencesContentProvider;->e:I

    .line 83
    const-string/jumbo v0, "content://com.viber.provider.prefs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->f:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 257
    return-void
.end method

.method static synthetic a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/settings/h;
    .locals 2
    .parameter

    .prologue
    .line 96
    new-instance v0, Lcom/viber/voip/settings/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/settings/h;-><init>(Landroid/content/Context;Lcom/viber/voip/settings/g;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/viber/voip/settings/PreferencesContentProvider;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/viber/voip/settings/PreferencesContentProvider;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/voip/settings/PreferencesContentProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 88
    const-class v1, Lcom/viber/voip/settings/PreferencesContentProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->g:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/j;->a(Landroid/content/Context;)V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->g:Ljava/util/HashSet;

    .line 91
    sget-object v0, Lcom/viber/voip/settings/PreferencesContentProvider;->g:Ljava/util/HashSet;

    invoke-static {}, Lcom/viber/voip/settings/PreferencesContentProvider;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit v1

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/viber/voip/settings/j;->S()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/viber/voip/settings/j;->T()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/viber/voip/settings/j;->U()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/viber/voip/settings/j;->V()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/viber/voip/settings/j;->W()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/viber/voip/settings/j;->L()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lcom/viber/voip/settings/j;->ag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ANIMATED_MESSAGES_ENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "reg_viber_country_code_string"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "reg_viber_country_code_string_version"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "reg_viber_phone_num_canonized"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "is_activated"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "gallery_coach_show"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "PREF_MARKET_ENABLE_URL_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "PREF_MARKET_PRODUCTS_SYNCED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "PREF_MARKET_VISIT_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "PREF_VIBER_OUT_PRODUCT_IDS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "use_as_secondary"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "check_data_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "all_sticker_pack_count"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "update_pack_count_time"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "watched_sticker_pack_count"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "show_facebook_like_dialog"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "call_min_time_count"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/viber/voip/settings/PreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/k;->a(Landroid/content/Context;)Lcom/viber/voip/process/k;

    .line 189
    invoke-virtual {p0}, Lcom/viber/voip/settings/PreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 195
    if-eqz p3, :cond_1

    .line 196
    new-instance v1, Lcom/viber/voip/settings/i;

    iget-object v0, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    invoke-direct {v1, v0}, Lcom/viber/voip/settings/i;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 212
    :goto_1
    return-object v0

    .line 196
    :cond_0
    const-string/jumbo v0, "F"

    goto :goto_0

    .line 199
    :cond_1
    sget v1, Lcom/viber/voip/settings/PreferencesContentProvider;->c:I

    aget-object v2, p4, v1

    .line 200
    sget v1, Lcom/viber/voip/settings/PreferencesContentProvider;->d:I

    aget-object v3, p4, v1

    .line 201
    sget v1, Lcom/viber/voip/settings/PreferencesContentProvider;->e:I

    aget-object v1, p4, v1

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :sswitch_0
    new-instance v0, Lcom/viber/voip/settings/i;

    iget-object v1, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/settings/i;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :sswitch_1
    new-instance v1, Lcom/viber/voip/settings/i;

    iget-object v4, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x54

    if-ne v3, v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v4, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "T"

    :goto_2
    invoke-direct {v1, v0}, Lcom/viber/voip/settings/i;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "F"

    goto :goto_2

    .line 208
    :sswitch_2
    new-instance v0, Lcom/viber/voip/settings/i;

    iget-object v1, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/settings/i;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :sswitch_3
    new-instance v0, Lcom/viber/voip/settings/i;

    iget-object v1, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/settings/i;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 212
    :sswitch_4
    new-instance v0, Lcom/viber/voip/settings/i;

    iget-object v1, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/settings/i;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x46 -> :sswitch_2
        0x49 -> :sswitch_3
        0x4c -> :sswitch_4
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    sget v2, Lcom/viber/voip/settings/PreferencesContentProvider;->c:I

    aget-object v2, p4, v2

    .line 221
    sget v3, Lcom/viber/voip/settings/PreferencesContentProvider;->d:I

    aget-object v3, p4, v3

    .line 222
    sget v4, Lcom/viber/voip/settings/PreferencesContentProvider;->e:I

    aget-object v4, p4, v4

    .line 223
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 237
    :goto_0
    return v1

    .line 227
    :sswitch_1
    iget-object v4, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x54

    if-ne v3, v5, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v4, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 229
    :sswitch_2
    iget-object v0, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;F)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 231
    :sswitch_3
    iget-object v0, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 233
    :sswitch_4
    iget-object v0, p0, Lcom/viber/voip/settings/PreferencesContentProvider;->a:Lcom/viber/voip/settings/l;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x46 -> :sswitch_2
        0x49 -> :sswitch_3
        0x4c -> :sswitch_4
        0x53 -> :sswitch_0
    .end sparse-switch
.end method
