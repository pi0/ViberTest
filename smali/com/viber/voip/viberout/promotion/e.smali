.class Lcom/viber/voip/viberout/promotion/e;
.super Lcom/viber/voip/viberout/promotion/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/promotion/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/promotion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/promotion/g;-><init>(Lcom/viber/voip/viberout/promotion/b;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/viber/voip/viberout/promotion/g;->a()V

    .line 213
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "PREF_VO_APP_ENTRY_NOTIFICATION_COUNT"

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method protected a(Lcom/viber/voip/viberout/promotion/a;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v2}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    sget-object v2, Lcom/viber/voip/viberout/promotion/c;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/viberout/promotion/a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v1}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;)Z

    .line 222
    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v2, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v2, v2, Lcom/viber/voip/viberout/promotion/b;->b:Lcom/viber/voip/viberout/promotion/d;

    invoke-static {v1, v2}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V

    goto :goto_0

    .line 228
    :cond_0
    sget-object v2, Lcom/viber/voip/viberout/promotion/c;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/viberout/promotion/a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 233
    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v2, p0, Lcom/viber/voip/viberout/promotion/e;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v2, v2, Lcom/viber/voip/viberout/promotion/b;->b:Lcom/viber/voip/viberout/promotion/d;

    invoke-static {v1, v2}, Lcom/viber/voip/viberout/promotion/b;->d(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    .line 228
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch
.end method
