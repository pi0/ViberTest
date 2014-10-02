.class Lcom/viber/voip/contacts/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/lastonline/LastOnlineDelegate;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1239
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1240
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLastSeen onlineContactInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;)V

    .line 1241
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 1242
    iget-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 1245
    :cond_0
    iget-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v4}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/m;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    new-instance v4, Lcom/viber/voip/contacts/ui/n;

    invoke-direct {v4, p0, v2}, Lcom/viber/voip/contacts/ui/n;-><init>(Lcom/viber/voip/contacts/ui/m;Lcom/viber/jni/OnlineContactInfo;)V

    invoke-virtual {v3, v4}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    return-void
.end method
