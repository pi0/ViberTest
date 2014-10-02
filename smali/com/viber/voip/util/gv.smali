.class public Lcom/viber/voip/util/gv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/AddFriendPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v1, "invite_not_viber"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/gv;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/gv;->b(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/AddFriendPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v1, "contact_details"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {p0, p1}, Lcom/viber/voip/util/gv;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/gv;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
