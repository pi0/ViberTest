.class public Lcom/viber/voip/contacts/b/b/a/c;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.android.contacts"
    table = "contacts"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static a:Lcom/viber/voip/messages/orm/creator/Creator;

.field private static b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private d:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "in_visible_group"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "has_phone_number"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/contacts/b/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/c;->b:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/contacts/b/b/a/c;->c:Z

    .line 45
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/d;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/c;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/a/d;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/c;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/c;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/c;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/c;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/c;->e:Z

    return p1
.end method


# virtual methods
.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/c;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhonebookContactEntity [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/c;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inVisibleGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
