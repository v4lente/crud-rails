class Solicitacao < ApplicationRecord

    validates :horario, presence: true, length: { minimum: 5 }

    validates :quantidade, presence: true, length: { minimum: 2 }

    validates :dia, presence: true, length: { minimum: 1 }

end