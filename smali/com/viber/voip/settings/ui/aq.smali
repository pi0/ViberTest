.class Lcom/viber/voip/settings/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/viber/voip/settings/ui/aq;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 213
    new-instance v0, Lcom/viber/voip/messages/controller/b/a;

    const-string/jumbo v1, "Rakuten"

    const-string/jumbo v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0x101

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    .line 214
    const-string/jumbo v1, "text"

    const-string/jumbo v2, "Your 4 digit code for Viber on desktop is: 4444. This is debug rakuten system message"

    invoke-virtual {v0, v1, v2, v8}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/viber/voip/messages/controller/cr;

    iget-object v0, p0, Lcom/viber/voip/settings/ui/aq;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, ""

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSyncedMessage()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v2, v1, v3, v0}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;

    move-result-object v4

    .line 216
    iget-boolean v0, v4, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicWatcher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    iget-object v1, v4, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-object v2, v4, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-object v3, v4, Lcom/viber/voip/messages/controller/cv;->f:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iget-boolean v4, v4, Lcom/viber/voip/messages/controller/cv;->c:Z

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZZ)V

    .line 219
    :cond_0
    return v8

    :cond_1
    move v0, v8

    .line 215
    goto :goto_0
.end method
