.class Lcom/viber/voip/contacts/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/do;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/n;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/viber/voip/contacts/c/p;->a:Lcom/viber/voip/contacts/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public a([Lcom/viber/jni/CGetUserDetails;)V
    .locals 6
    .parameter

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addPhotoToParticipants NOT from contact book = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 588
    array-length v0, p1

    new-array v1, v0, [Lcom/viber/jni/GroupUserInfo;

    .line 589
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 590
    aget-object v2, p1, v0

    .line 591
    new-instance v3, Lcom/viber/jni/GroupUserInfo;

    iget-object v4, v2, Lcom/viber/jni/CGetUserDetails;->OriginalPhoneNumber:Ljava/lang/String;

    iget-object v5, v2, Lcom/viber/jni/CGetUserDetails;->Name:Ljava/lang/String;

    iget-object v2, v2, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/viber/jni/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_0
    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->a([Lcom/viber/jni/GroupUserInfo;)V

    .line 594
    return-void
.end method
