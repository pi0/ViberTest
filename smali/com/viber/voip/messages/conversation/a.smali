.class public Lcom/viber/voip/messages/conversation/a;
.super Lcom/viber/provider/b;
.source "SourceFile"


# static fields
.field private static final h:Lcom/viber/voip/messages/orm/creator/Creator;


# instance fields
.field private final i:Lcom/viber/voip/contacts/c/d/b;

.field private j:Lcom/viber/voip/contacts/c/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/viber/voip/contacts/b/b/e;->c:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    sput-object v0, Lcom/viber/voip/messages/conversation/a;->h:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 33
    sget-object v0, Lcom/viber/voip/messages/conversation/a;->h:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 24
    new-instance v0, Lcom/viber/voip/messages/conversation/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/b;-><init>(Lcom/viber/voip/messages/conversation/a;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a;->j:Lcom/viber/voip/contacts/c/d/e;

    .line 34
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a;->i:Lcom/viber/voip/contacts/c/d/b;

    .line 36
    sget-object v0, Lcom/viber/voip/messages/conversation/a;->h:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a;->a([Ljava/lang/String;)V

    .line 37
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/a;->b([Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "phonebookcontact.viber=1 AND phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.data2<>? AND phonebookdata.data2 IN (SELECT vibernumbers.canonized_number FROM  vibernumbers))"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a;->a(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "sms_count DESC, phonebookcontact.low_display_name ASC, phonebookcontact._id DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a;->b(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a;->d(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a;->e(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/viber/voip/contacts/b/e;
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/viber/voip/messages/conversation/a;->h:Lcom/viber/voip/messages/orm/creator/Creator;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a;->e:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a;->i:Lcom/viber/voip/contacts/c/d/b;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a;->j:Lcom/viber/voip/contacts/c/d/e;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/b;->b(Lcom/viber/voip/contacts/c/d/e;)V

    .line 54
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a;->i:Lcom/viber/voip/contacts/c/d/b;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a;->j:Lcom/viber/voip/contacts/c/d/e;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Lcom/viber/voip/contacts/c/d/e;)V

    .line 58
    return-void
.end method
