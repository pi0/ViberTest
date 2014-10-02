.class public final Lcom/viber/voip/settings/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    .line 231
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "reg_viber_phone_num"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "reg_viber_phone_num_canonized"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "image_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "server_uploaded"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "reg_viber_country_code"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "extra_navigate_user_data"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "pref_clear_prefs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->N()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "sync_hash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "name_server_uploaded"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->E()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "remove_sync_account_for_first_migration_run"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "need_recover_groups"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    const-string/jumbo v1, "settings_viber_in_syncing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/settings/k;->b:Ljava/util/Set;

    .line 268
    sget-object v0, Lcom/viber/voip/settings/k;->b:Ljava/util/Set;

    const-string/jumbo v1, "3g_data"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/viber/voip/settings/k;->b:Ljava/util/Set;

    const-string/jumbo v1, "wifi_data"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/viber/voip/settings/k;->b:Ljava/util/Set;

    const-string/jumbo v1, "msg_sent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/viber/voip/settings/k;->b:Ljava/util/Set;

    const-string/jumbo v1, "msg_received"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/settings/k;->c:Ljava/util/Set;

    .line 277
    sget-object v0, Lcom/viber/voip/settings/k;->c:Ljava/util/Set;

    const-string/jumbo v1, "viber_udid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/viber/voip/settings/k;->c:Ljava/util/Set;

    const-string/jumbo v1, "device_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/viber/voip/settings/k;->c:Ljava/util/Set;

    const-string/jumbo v1, "device_hardware_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/viber/voip/settings/k;->c:Ljava/util/Set;

    const-string/jumbo v1, "secondary_device_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/viber/voip/settings/k;->c:Ljava/util/Set;

    const-string/jumbo v1, "secondary_udid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method
