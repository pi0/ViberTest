.class Lcom/viber/voip/viberout/promotion/d;
.super Lcom/viber/voip/viberout/promotion/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/promotion/b;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/promotion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/promotion/g;-><init>(Lcom/viber/voip/viberout/promotion/b;)V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "IdleState: onOpenedFromIcon()"

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "PREF_VO_APP_ENTRY_ICON_COUNT"

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v0}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/viberout/promotion/d;->c:Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v0}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/viberout/promotion/d;->c:Z

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/viber/voip/viberout/promotion/d;->c:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "IdleState: onContactsShown()"

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v0}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_contacts"

    const-string/jumbo v2, "vo_contacts_splash_shown"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "PREF_VO_APP_ENTRY_ICON_COUNT"

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v2, "PREF_VO_APP_ENTRY_NOTIFICATION_COUNT"

    invoke-static {v1, v2}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_intro_splash_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "contacts shown after 3rd visit, showing intro splash"

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-static {v0}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;)Z

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_contacts"

    const-string/jumbo v2, "vo_contacts_splash_shown"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "IdleState: onContactInfoShown()"

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/viber/voip/viberout/promotion/d;->c:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_contact_info"

    const-string/jumbo v2, "vo_contact_info_splash_shown"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "IdleState: onTrialEnded()"

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_end_of_trial"

    const-string/jumbo v2, "vo_trial_call_ended"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/viberout/promotion/a;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/viber/voip/viberout/promotion/c;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/viberout/promotion/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return v0

    .line 131
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/d;->d()V

    .line 160
    :goto_1
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/d;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, v1, Lcom/viber/voip/viberout/promotion/b;->c:Lcom/viber/voip/viberout/promotion/e;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V

    goto :goto_1

    .line 139
    :pswitch_4
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/d;->e()V

    goto :goto_1

    .line 143
    :pswitch_5
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/d;->f()V

    goto :goto_1

    .line 147
    :pswitch_6
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/d;->g()V

    goto :goto_1

    .line 151
    :pswitch_7
    iput-boolean v0, p0, Lcom/viber/voip/viberout/promotion/d;->c:Z

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
