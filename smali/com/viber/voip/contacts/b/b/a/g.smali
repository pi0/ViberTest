.class public Lcom/viber/voip/contacts/b/b/a/g;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.android.contacts"
    table = "raw_contacts"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static a:Lcom/viber/voip/messages/orm/creator/Creator;

.field private static b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private d:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "contact_id"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "deleted"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/contacts/b/b/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/g;->b:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/contacts/b/b/a/g;->c:Z

    .line 50
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/h;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/g;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/a/h;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/g;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/g;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/g;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/g;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/g;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/g;->d:J

    return-wide p1
.end method


# virtual methods
.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ContactRawEntity [contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/g;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/g;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/g;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
