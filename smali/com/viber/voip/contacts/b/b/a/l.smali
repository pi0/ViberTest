.class public Lcom/viber/voip/contacts/b/b/a/l;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.viber.provider.vibercontacts"
    table = "phonebookdata"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field public static final k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field private static l:Z


# instance fields
.field protected b:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data1"
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data2"
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data3"
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data4"
    .end annotation
.end field

.field protected f:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "data5"
    .end annotation
.end field

.field protected g:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "int_data2"
    .end annotation
.end field

.field protected h:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "mime_type"
    .end annotation
.end field

.field protected i:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "contact_id"
    .end annotation
.end field

.field protected j:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "raw_id"
    .end annotation
.end field

.field private m:Lcom/viber/voip/contacts/b/b/a/i;

.field private n:Lcom/viber/voip/contacts/b/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/l;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/contacts/b/b/a/l;->l:Z

    .line 220
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/m;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/l;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/a/m;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/a/e;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    .line 55
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    .line 56
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->id:J

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/l;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/l;->id:J

    return-wide p1
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    .line 106
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/l;->n:Lcom/viber/voip/contacts/b/b/a/a;

    .line 134
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/b/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/l;->m:Lcom/viber/voip/contacts/b/b/a/i;

    .line 126
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    .line 114
    return-void
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 200
    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    :cond_0
    const-string/jumbo v1, "raw_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string/jumbo v1, "contact_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string/jumbo v1, "data1"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "data2"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "data3"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "data4"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "data5"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "int_data2"

    iget v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string/jumbo v1, "mime_type"

    iget v2, p0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    return v0
.end method

.method public l()Lcom/viber/voip/contacts/b/b/a/i;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->m:Lcom/viber/voip/contacts/b/b/a/i;

    return-object v0
.end method

.method public m()Lcom/viber/voip/contacts/b/b/a/a;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->n:Lcom/viber/voip/contacts/b/b/a/a;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/l;->k()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/l;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public o()Lcom/viber/voip/messages/orm/entity/EntityUpdater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/b/b/a/n;-><init>(Lcom/viber/voip/contacts/b/b/a/l;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    packed-switch v0, :pswitch_data_0

    .line 185
    const-string/jumbo v0, "unknouwn"

    .line 188
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DataEntity super of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  [id(data_id)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rawId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_0
    const-string/jumbo v0, "PhoneDataEntity"

    goto/16 :goto_0

    .line 182
    :pswitch_1
    const-string/jumbo v0, "EmailDataEntity"

    goto/16 :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
